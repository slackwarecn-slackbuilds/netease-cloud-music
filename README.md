# 网易云音乐 SlackBuild
网易云音乐是一款专注于发现与分享的音乐产品，依托专业音乐人、DJ、好友推荐及社交功能，为用户打造全新的音乐生活。

相比市场上其他音乐产品，网易云音乐主打歌单、社交、大牌推荐、音乐指纹技术四个功能，其主要特点包括：

1.用户可以根据自己的喜好创建、收藏、分享歌单，应用以用户创造的歌单为基本线索。

2.用户可以导入原有手机通讯录、SNS关系，或者借助网易云音乐自身LBS功能构建音乐社交圈。

3.用户可以建立自己的主页，可以互相关注，分享音乐，用户的动态在这个圈子里即时呈现。

4.网易云音乐包含DJ及音乐人独家自制节目。

5.应用音乐指纹技术，通过听取音乐旋律，帮助用户找到歌曲。

## 依赖
[qt5](https://slackbuilds.org/repository/14.1/libraries/qt5/)
[libcue](https://slackbuilds.org/repository/14.1/libraries/libcue/)

## 安装方法
**不要直接安装glib2-2.46.2-x86_64-2.txz！**

目前仅支持Slackware64-14.1版本
```
git clone https://github.com/slackwarecn/netease_cloud_music_slackbuild
cd netease_cloud_music_slackbuild
# 下载官方的deb包
wget http://s1.music.126.net/download/pc/netease-cloud-music_0.9.0-1_amd64.deb
# 下载所需的新版本 glib2-2.46.2 (PS: 同样使用编译好的包)
wget http://mirrors.ustc.edu.cn/slackware/slackware64-current/slackware64/l/glib2-2.46.2-x86_64-2.txz
sudo sh cloud_music.SlackBuild
sudo installpkg /tmp/cloud_music-0.9.0-x86_64-1_SBo.tgz
```
