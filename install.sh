#!/bin/sh

SOURCE_URL=''
SOURCE=''
SHA256SUMS=('d118d78c62d3d9745fe290dcb5ba0b7412c32f6aa01ae59f8065fd677a208995')

# Automatically determine the architecture we're building on:
if [ -z "$ARCH" ]; then
  case "$(uname -m)" in
    i?86) ARCH=i486 ;;
    arm*) ARCH=arm ;;
    # Unless $ARCH is already set, use uname -m for all other archs:
       *) ARCH=$(uname -m) ;;
  esac
fi

set -e
# If you prefer to do selective error checking with
#   command || exit 1
# then that's also acceptable.

# Get source
# {
case $ARCH in
  *86) SOURCE_URL='http://s1.music.126.net/download/pc/netease-cloud-music_0.9.0-1_i386.deb'
        GLIB2_URL='http://mirrors.ustc.edu.cn/slackware/slackware-current/slackware/l/glib2-2.46.2-i586-2.txz'
        GLIB2_ASC_URL='http://mirrors.ustc.edu.cn/slackware/slackware-current/slackware/l/glib2-2.46.2-i586-2.txz.asc'
    break ;;
  *64) SOURCE_URL='http://s1.music.126.net/download/pc/netease-cloud-music_0.9.0-1_amd64.deb'
        GLIB2_URL='http://mirrors.ustc.edu.cn/slackware/slackware64-current/slackware64/l/glib2-2.46.2-x86_64-2.txz'
        GLIB2_ASC_URL='http://mirrors.ustc.edu.cn/slackware/slackware64-current/slackware64/l/glib2-2.46.2-x86_64-2.txz.asc'
    break ;;
  *) SOURCE_URL=''
    break ;;
esac
SOURCE=$(basename $SOURCE_URL)
test -n $SOURCE_URL
wget -nc $SOURCE_URL
# 此处避免使用下标，因为不同shell 中数组下标规则不同，有使用其他shell 执行SlackBuild 的可能
if [[ $(echo ${SHA256SUMS[@]} | awk '{print $1}') != $(sha256sum $SOURCE | awk '{print $1}') ]]
then
  echo "Bad file ${SOURCE}" >&2
  exit 1
fi
# }

test -n $GLIB2_URL
wget -nc $GLIB2_URL
test -n $GLIB2_ASC_URL
wget -nc $GLIB2_ASC_URL
gpg --verify $(basename $GLIB2_ASC_URL)

sh cloud_music.SlackBuild
installpkg /tmp/cloud_music-0.9.0-${ARCH}-1_SBo.tgz
