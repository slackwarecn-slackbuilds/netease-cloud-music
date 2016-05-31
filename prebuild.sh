#!/bin/sh
set -e

CWD=$(dirname $(readlink -f $0))
SOURCE_URL=''
SOURCE=''
SHA256SUMS=(
  'd118d78c62d3d9745fe290dcb5ba0b7412c32f6aa01ae59f8065fd677a208995'  # netease-cloud-music_0.9.0-1_amd64.deb
  'f838e792769957fa99fb3cbf3a852669246a80ece1975abeca338c010e28dc6c'  # glib2-2.46.2-i586-2.txz
  'efb94f25a3ef36633d8ee19c0842959ea1a0802bd257f514088d850306280d9b'  # glib2-2.46.2-x86_64-2.txz
)

source "${CWD}/conf.sh"

echo -ne "Prebuilding...\t"

SOURCE=$(basename $SOURCE_URL)
test -n $SOURCE_URL
wget -N $SOURCE_URL 2>/dev/null
test $(echo ${SHA256SUMS[@]} | awk '{print $1}') == $(sha256sum $SOURCE | awk '{print $1}')

GLIB2=$(basename $GLIB2_URL)
test -n $GLIB2_URL
wget -N $GLIB2_URL 2>/dev/null
if echo $GLIB2_URL | grep -o 'x86_64' >/dev/null 2>&1; then
  test $(echo ${SHA256SUMS[@]} | awk '{print $3}') == $(sha256sum $GLIB2 | awk '{print $1}')
else
  test $(echo ${SHA256SUMS[@]} | awk '{print $2}') == $(sha256sum $GLIB2 | awk '{print $1}')
fi

echo "Done"

