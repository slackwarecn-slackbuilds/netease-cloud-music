# netease-cloud-music

## ABOUT

This is [SlackBuild](http://docs.slackware.com/slackware:slackbuild_scripts) for [NetEase Cloud Music](http://music.163.com/#/download).

See [netease-cloud-music.info](netease-cloud-music.info) and [slack-desc](slack-desc) for more info.

Modifing on Slackwarecn version. Did some offcial request proof work. It work, but I don't know how well it is.

## REQUIRES

1. alsa-lib (Offical support)
+ gst-plugins-base (Offical support)
+ gst-plugins-good (Offical support)
+ [gst-plugins-ugly](https://slackbuilds.org/repository/14.2/multimedia/gst-plugins-ugly/)
+ mozilla-nss (Offical support)
+ [qt5](https://slackbuilds.org/repository/14.2/libraries/qt5/)

依赖详情请查看 requests 文件
## BUILD

```
Remanber installing all requests.
git clone https://github.com/slackwarecn-slackbuilds/netease-cloud-music.git
cd netease-cloud-music
source netease-cloud-music.info
wget $DOWNLOAD          # For x86
wget $DOWNLOAD_x86_64   # For x86_64
./netease-cloud-music.SlackBuild
```

