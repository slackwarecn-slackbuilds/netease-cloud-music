# Netease Cloud Music

## ABOUT

This is SlackBuild for [Netease Cloud Music](http://music.163.com/#/download)

## DEPENDENCIES

1. [qt5](https://slackbuilds.org/repository/14.2/libraries/qt5/)
+ [libcue](https://slackbuilds.org/repository/14.2/libraries/libcue/)
+ [libxkbcommon](https://slackbuilds.org/repository/14.2/libraries/libxkbcommon/)

## INSTALLATION

```
git clone https://github.com/slackwarecn/netease-cloud-music
cd netease-cloud-music
PREBUILD=yes ./netease-cloud-music.SlackBuild
su -c 'installpkg /tmp/netease-cloud-music-1.0.0-x86_64-1_SBo.txz'
```

