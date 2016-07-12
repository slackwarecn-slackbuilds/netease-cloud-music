# netease-cloud-music

## ABOUT

This is [SlackBuild](http://docs.slackware.com/slackware:slackbuild_scripts) for [NetEase Cloud Music](http://music.163.com/#/download).

See [netease-cloud-music.info](netease-cloud-music.info) and [slack-desc](slack-desc) for more info.

## DEPENDENCIES

1. alsa-lib (Offical support)
+ mozilla-nss (Offical support)
+ gst-plugins-base (Offical support)
+ gst-plugins-good (Offical support)
+ [gst-libav](https://slackbuilds.org/repository/14.2/multimedia/gst-libav/)
+ [gst-plugins-ugly](https://slackbuilds.org/repository/14.2/multimedia/gst-plugins-ugly/)
+ [libcue](https://slackbuilds.org/repository/14.2/libraries/libcue/)
+ [libxkbcommon](https://slackbuilds.org/repository/14.2/libraries/libxkbcommon/)
+ [qt5](https://slackbuilds.org/repository/14.2/libraries/qt5/)
+ [kconfig](https://github.com/slackwarecn/kconfig.git) (Not necessary but recommended)

## BUILD

```
git clone https://github.com/slackwarecn/netease-cloud-music.git
cd netease-cloud-music
PREBUILD=yes ./netease-cloud-music.SlackBuild
```
