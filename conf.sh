#!/bin/cat

# Automatically determine the architecture we're building on:
if [ -z "$ARCH" ]; then
  case "$(uname -m)" in
    i?86) ARCH=i486 ;;
    arm*) ARCH=arm ;;
    # Unless $ARCH is already set, use uname -m for all other archs:
       *) ARCH=$(uname -m) ;;
  esac
fi

case $ARCH in
  *86)
    SOURCE_URL='http://s1.music.126.net/download/pc/netease-cloud-music_0.9.0-1_i386.deb'
    GLIB2_URL='http://mirrors.ustc.edu.cn/slackware/slackware-current/slackware/l/glib2-2.46.2-i586-2.txz'
    break ;;
  *64)
    SOURCE_URL='http://s1.music.126.net/download/pc/netease-cloud-music_0.9.0-1_amd64.deb'
    GLIB2_URL='http://mirrors.ustc.edu.cn/slackware/slackware64-current/slackware64/l/glib2-2.46.2-x86_64-2.txz'
    break ;;
  *)
    SOURCE_URL=''
    GLIB2_URL=''
    break ;;
esac

