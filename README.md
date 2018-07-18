padavan for 小米路由器3G
=====

根据 padavan 原版固件加入小米路由器3G适配文件，感谢 [gorden5566](https://github.com/gorden5566/padavan) 的汉化


## 说明

本着最小化原则，在原版基础上做以下修改

- 简体中文 源于  [gorden5566](https://github.com/gorden5566/padavan)

- 无线驱动更新

- 关闭 exFAT 支持

- 关闭摄像头支持

- 关闭 NFS 服务

- 关闭 samba 服务

- 开启 samba 客户端支持

- 关闭打印机支持

- 开启 tcpdump 支持

- 关闭 FTP 服务

- 开启 SFTP 服务

- 关闭 telnet 服务

- 开启 SSH 服务

- 关闭 openVPN 支持

- 关闭 IPTV 支持

- 关闭 DLNA 支持

- 关闭 transmission 支持

- 关闭 aria 支持

- 终端高亮

- NTP 修改为国内地址

- 修改 WiFi 区域为中国

------

## 编译

1. 安装 git
    ``` bash
    sudo apt-get update
    sudo apt-get install git
    ```
2. 获取源码
    ``` bash
    cd /usr/local/src
    git clone https://bitbucket.org/padavan/rt-n56u.git

3. 安装依赖
    ``` bash
    sudo apt-get update
    sudo apt-get install autoconf automake autopoint bison build-essential flex gawk gettext git gperf libtool pkg-config zlib1g-dev libgmp3-dev libmpc-dev libmpfr-dev texinfo python-docutils
    ```
4. 构建工具链 
    ``` bash
    cd /usr/local/src/rt-n56u/toolchain-mipsel
    sudo ./clean_sources
    sudo ./build_toolchain
    ```
5. 获取小米路由器3G适配文件
    ``` bash
    cd /usr/local/src
    git clone https://github.com/frostnotfall/Padavan.git
    cd /usr/local/src/Padavan
    sudo ./install.sh
    sudo cp -fv "/usr/local/src/rt-n56u/trunk/configs/templates/mi-r3g.config" "/usr/local/src/rt-n56u/trunk/.config"
    ```
6. 编译 Padavan 固件
    ``` bash
    cd /usr/local/src/rt-n56u/trunk
    sudo ./clear_tree
    sudo ./build_firmware

