## 安装Ubuntu之后...

### 准备工作
1、设置root密码

```
sudo passwd
```

2、修改软件源，升级系统

修改文件：/etc/apt/sources.list

```
deb http://cn.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse
##测试版源
deb http://cn.archive.ubuntu.com/ubuntu/ xenial-proposed main restricted universe multiverse
# 源码
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse
##测试版源
deb-src http://cn.archive.ubuntu.com/ubuntu/ xenial-proposed main restricted universe multiverse
# Canonical 合作伙伴和附加
deb http://archive.canonical.com/ubuntu/ xenial partner
```

执行命令

```
sudo apt-get update
```

3、安装sogo输入法

[安装教程](http://pinyin.sogou.com/linux/?r=pinyin)

输入法设置

System Settings... -> Language Support

将 Keyboard input method system: 设置为fcitx

4、取消Alt按键设置

System Settings... -> Keyboard -> Shortcuts -> Launchers -> Key to show the HUD

将上面这个选项设置为 Disable

5、安装shadowsocks-qt5

梯子必备

[安装教程](https://github.com/shadowsocks/shadowsocks-qt5/wiki/%E5%AE%89%E8%A3%85%E6%8C%87%E5%8D%97)

设置开机启动，执行命令

```
gnome-session-properties
```

点击Add，输入Name:Shadowsocks-Qt5，Command:/usr/bin/ss-qt5，Comment:Shadowsocks-Qt5

### 安装常用软件

1、WPS

[下载地址](http://community.wps.cn/download/)

解决字体问题

将字体third_party/wps_symbol_fonts.zip解压

```
sudo cp *.ttf /usr/share/fonts
sudo cp *.TTF /usr/share/fonts
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
```

2、安装Chrome

添加源地址

```
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
```

安装稳定版本

```
sudo apt-get install google-chrome-stable
```

安装代理插件

[Proxy SwitchOmega](https://github.com/FelisCatus/SwitchyOmega)

配置Proxy Servers，Protocol: SOCK5，Server:127.0.0.1，Port:1080

配置Rule List Config， Rule List Format: AutoProxy，Rule List URL: https://autoproxy-gfwlist.googlecode.com/svn/trunk/gfwlist.txt

3、软件中心的应用

截图软件：Shutter

视屏播放软件: VLC media player

4、命令行安装

git
```
sudo apt-get install git
```


