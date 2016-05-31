# 网易云音乐 SlackBuild

## 关于

网易云音乐是一款专注于发现与分享的音乐产品，依托专业音乐人、DJ、好友推荐及社交功能，为用户打造全新的音乐生活。

相比市场上其他音乐产品，网易云音乐主打歌单、社交、大牌推荐、音乐指纹技术四个功能，其主要特点包括：

1. 用户可以根据自己的喜好创建、收藏、分享歌单，应用以用户创造的歌单为基本线索。
+ 用户可以导入原有手机通讯录、SNS关系，或者借助网易云音乐自身LBS功能构建音乐社交圈。
+ 用户可以建立自己的主页，可以互相关注，分享音乐，用户的动态在这个圈子里即时呈现。
+ 网易云音乐包含DJ及音乐人独家自制节目。
+ 应用音乐指纹技术，通过听取音乐旋律，帮助用户找到歌曲。

## 依赖

1. [qt5](https://slackbuilds.org/repository/14.1/libraries/qt5/)
+ [libcue](https://slackbuilds.org/repository/14.1/libraries/libcue/)

## 安装方法

> 目前仅支持Slackware-14.1版本

```
sudo rm /tmp/cloud_music-*.tgz
git clone https://github.com/slackwarecn/netease_cloud_music_slackbuild
cd netease_cloud_music_slackbuild
./prebuild.sh
sudo sh ./cloud_music.SlackBuild
sudo installpkg /tmp/cloud_music-*.tgz
```

