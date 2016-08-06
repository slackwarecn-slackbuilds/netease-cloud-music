# netease-cloud-music

## ABOUT

This is [SlackBuild](http://docs.slackware.com/slackware:slackbuild_scripts) for [NetEase Cloud Music](http://music.163.com/#/download).

See [netease-cloud-music.info](netease-cloud-music.info) and [slack-desc](slack-desc) for more info.

## REQUIRES

1. alsa-lib (Offical support)
+ [gst-libav](https://slackbuilds.org/repository/14.2/multimedia/gst-libav/)
+ gst-plugins-base (Offical support)
+ gst-plugins-good (Offical support)
+ [gst-plugins-ugly](https://slackbuilds.org/repository/14.2/multimedia/gst-plugins-ugly/)
+ [kconfig](https://github.com/slackwarecn-slackbuilds/kconfig.git) (Not necessary but recommended)
+ [libcue](https://slackbuilds.org/repository/14.2/libraries/libcue/)
+ [libxkbcommon](https://slackbuilds.org/repository/14.2/libraries/libxkbcommon/)
+ mozilla-nss (Offical support)
+ [qt5](https://slackbuilds.org/repository/14.2/libraries/qt5/)

## BUILD

```
git clone https://github.com/slackwarecn-slackbuilds/netease-cloud-music.git
cd netease-cloud-music
source netease-cloud-music.info
wget $DOWNLOAD          # For x86
wget $DOWNLOAD_x86_64   # For x86_64
./netease-cloud-music.SlackBuild
```

