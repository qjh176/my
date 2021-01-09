#!/bin/bash
pass=yaohuo.me

echo -e "\033[34m 
#---一个来自深渊，从墩厚化危险的网络过客---#
#世界上有一种人，他们均把开心建立在别人的痛苦之上，你们猜，是什么人？#
\033[0m"
echo -e "\033[32m 注意看清楚哦，别重装了不知道用户名和密码 \033[0m"
echo -e "\033[32m 调皮，加个密码玩（妖火网） \033[0m"
read ps
if [[ $ps == $pass ]]
    then
        echo 
        echo -e "\033[32m 密码正确！ \033[0m"
    else
        echo
        echo -e "\033[32m 密码错误了哦！ \033[0m"
		echo "$Error";		
exit 0;
fi
echo "============================================================================"

                               echo -e "\033[32m 请选择： \033[0m"
                  echo -e "\033[32m 1为dd  linux \033[0m"
                  echo -e "\033[32m 2为dd  windows \033[0m"
                  echo -e "\033[31m 注意：请先把登录名和密码复制好，免得装好不知道密码 \033[0m"
                  echo -e "\033[32m 脚本如果以后某天挂了可以到我群下，无加密开源 \033[0m"
                  echo -e "\033[32m qq唠嗑群：659126869 \033[0m"
                  echo -e "\033[32m 作者：千狐の王座 \033[0m"

echo "============================================================================"
read -p "请输入:" b
if (($b==1));then
echo "============================================================================"
echo -e "\033[34m                            本模式为linux   dd  linux \033[0m"
			     
			     echo -e "\033[32m 以网络流传较广的Vicer一键DD为例，其所需环境为： \033[0m"
			     echo -e "\033[32m 架构：KVM/XEN，不支持OpenVZ。 \033[0m"
			     echo -e "\033[32m 系统：Debian/Ubuntu/CentOS \033[0m"
			     echo -e "\033[32m Vicer脚本目前不支持重装为CentOS 7系统，支持CentOS 6.9以下版本。 \033[0m"
			     echo -e "\033[32m 重装的系统源自官方发行版。 \033[0m"
			     echo -e "\033[32m 安装过程全自动进行，无需VNC操作，无需进入救援模式。 \033[0m"
			     echo -e "\033[31m 系统安装完成后的默认用户名为root，默认密码为:MoeClub.org \033[0m"
			     echo -e "\033[31m 注意：请先把登录名和密码复制好，免得装好不知道密码 \033[0m"
			     echo -e "\033[31m 注意：linux均为纯净版，用wget的时候会提示证书不安全 \033[0m"
			     echo -e "\033[31m 注意：提示证书不安全就执行这句：sudo apt-get install ca-certificates \033[0m"
			     
echo "============================================================================"
echo -e "\033[32m 请选择序号： \033[0m"
echo -e "\033[31m 用户名:root密码:MoeClub.org \033[0m"
echo -e "\033[32m 1，重装为centos6.5x32位 \033[0m"
echo -e "\033[32m 2，重装为centos6.5x64位 \033[0m"
echo -e "\033[32m 3，重装为centos6.9x32位 \033[0m"
echo -e "\033[32m 4，重装为centos6.9x64位 \033[0m"
echo -e "\033[32m 5，重装为Debian8x32位 \033[0m"
echo -e "\033[32m 6，重装为Debian8x64位 \033[0m"
echo -e "\033[32m 7，重装为Debian9x32位 \033[0m"
echo -e "\033[32m 8，重装为Debian9x64位 \033[0m"
echo -e "\033[32m 9，重装为Ubuntu 12.04 32位 \033[0m"
echo -e "\033[32m 10，重装为Ubuntu 12.04 64位 \033[0m"
echo -e "\033[32m 11，重装为Ubuntu 14.04 32位 \033[0m"
echo -e "\033[32m 12，重装为Ubuntu 14.04 64位 \033[0m"
echo -e "\033[32m 13，重装为Ubuntu 16.04 32位 \033[0m"
echo -e "\033[32m 14，重装为Ubuntu 16.04 64位 \033[0m"
echo -e "\033[32m 15，重装为Ubuntu 18.04 32位 \033[0m"
echo -e "\033[32m 16，重装为Ubuntu 18.04 64位 \033[0m"

echo "============================================================================"
read -p "请输入序号:" a
if (($a==1));then
echo -e "\033[32m centos6.5x32位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -c 6.5 -v 32 -a
elif (($a==2));then
echo -e "\033[32m centos6.5x64位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -c 6.5 -v 64 -a
elif (($a==3));then
echo -e "\033[32m centos6.9x32位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -c 6.9 -v 32 -a
elif (($a==4));then
echo -e "\033[32m centos6.9x64位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -c 6.9 -v 64 -a
elif (($a==5));then
echo -e "\033[32m Debian8x32位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -d 8 -v 32 -a
elif (($a==6));then
echo -e "\033[32m Debian8x64位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -d 8 -v 64 -a
elif (($a==7));then
echo -e "\033[32m Debian9x32位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -d 9 -v 32 -a
elif (($a==8));then
echo -e "\033[32m Debian9x64位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -d 9 -v 64 -a
elif (($a==9));then
echo -e "\033[32m Ubuntu 12.04 32位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 12.04 -v 32 -a
elif (($a==10));then
echo -e "\033[32m Ubuntu 12.04 64位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 12.04 -v 64 -a
elif (($a==11));then
echo -e "\033[32m Ubuntu 14.04 32位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 14.04 -v 32 -a
elif (($a==12));then
echo -e "\033[32m Ubuntu 14.04 64位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 14.04 -v 64 -a
elif (($a==13));then
echo -e "\033[32m Ubuntu 16.04 32位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 16.04 -v 32 -a
elif (($a==14));then
echo -e "\033[32m Ubuntu 16.04 64位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 16.04 -v 64 -a
elif (($a==15));then
echo -e "\033[32m Ubuntu 18.04 32位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 18.04 -v 32 -a
elif (($a==16));then
echo -e "\033[32m Ubuntu 18.04 64位 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 18.04 -v 64 -a
else
echo
fi
exit 0;


elif (($b==2));then
echo "============================================================================"
echo -e "\033[34m                            本模式为linux   dd  windows \033[0m"
			     
			     echo -e "\033[32m 目前网上流传最广的DD脚本，是Vicer的一键脚本，功能比较强大。 \033[0m"
			     echo -e "\033[32m Vicer脚本优点：可以实现Windows系统全自动安装，无需VNC模式或救援模式， 安装完成后可以通过远程桌面直接登录系统。 \033[0m"
			     echo -e "\033[32m 适用架构：不能是OpenVZ架构，支持KVM/XEN。 \033[0m"
			     echo -e "\033[32m 适用系统：GRUB引导的 CentOS/Debian/Ubuntu。 \033[0m"
			     echo -e "\033[32m 硬盘空间：建议10G以上，最好15G以上。 \033[0m"
			     echo -e "\033[31m 注意：请先把登录名和密码复制好，免得装好不知道密码 \033[0m"
			     
			     

echo "============================================================================"
echo -e "\033[32m 请选择序号： \033[0m"
echo -e "\033[31m 默认用户名：Administrator密码:Vicer \033[0m"
echo -e "\033[32m 1，Windows 7 32位中文（Windows Thin PC）国外源 \033[0m"
echo -e "\033[32m 2，Windows 7 32位中文（Windows Thin PC）国内源 \033[0m"
echo -e "\033[32m 3，Windows 8.1 SP1 64位中文国外源 \033[0m"
echo -e "\033[32m 4，Windows 8.1 SP1 64位中文国内源 \033[0m"
echo -e "\033[32m 5，Windows 10 ltsc 64位中文国外源 \033[0m"
echo -e "\033[32m 6，Windows 10 ltsc 64位中文国内源 \033[0m"
echo -e "\033[31m 注意注意：下面序号的系统密码是自己设置的不是上面的 \033[0m"
echo -e "\033[32m 7，Server2008 R2 data center 不需要rescue模式支持，需要VNC支持（设置密码）默认未开启远程登录 \033[0m"
echo -e "\033[32m 8，Windows Server2012 R2 data center 不需要rescue模式支持，需要VNC支持（设置密码）自动开启远程登录（密码需要安装的时候自己设置） \033[0m"
echo -e "\033[32m 9，Windows Server2016 data center ，需要VNC支持（设置密码）自动开启远程登录 \033[0m"
echo -e "\033[32m 10，Windows Server2019 data center ，需要VNC支持（设置密码）自动开启远程登录（密码需要安装的时候自己设置） \033[0m"

echo "============================================================================"
read -p "请输入序号:" a
if (($a==1));then
echo -e "\033[32m 1，Windows 7 32位中文（Windows Thin PC）国外源 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -dd "https://image.moeclub.org/GoogleDrive/1srhylymTjYS-Ky8uLw4R6LCWfAo1F3s7"
elif (($a==2));then
echo -e "\033[32m 2，Windows 7 32位中文（Windows Thin PC）国内源 \033[0m"
wget --no-check-certificate -qO DebianNET.sh 'http://arv.asuhu.com/dd/DebianNET.sh' && bash DebianNET.sh -dd 'http://arv.asuhu.com/dd/get-win7embx86-auto'
elif (($a==3));then
echo -e "\033[32m 3，Windows 8.1 SP1 64位中文国外源 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -dd "https://image.moeclub.org/GoogleDrive/1cqVl2wSGx92UTdhOxU9pW3wJgmvZMT_J"
elif (($a==4));then
echo -e "\033[32m 4，Windows 8.1 SP1 64位中文国内源 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -dd "https://moeclub.org/onedrive/IMAGE/Windows/win8.1emb_x64.tar.gz"
elif (($a==5));then
echo -e "\033[32m 5，Windows 10 ltsc 64位中文国外源 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -dd "https://image.moeclub.org/GoogleDrive/1OVA3t-ZI2arkM4E4gKvofcBN9aoVdneh"
elif (($a==6));then
echo -e "\033[32m 6，Windows 10 ltsc 64位中文国内源 \033[0m"
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -dd "https://moeclub.org/onedrive/IMAGE/Windows/win10ltsc_x64.tar.gz"
elif (($a==7));then
echo -e "\033[32m 7，Server2008 R2 data center \033[0m"
wget --no-check-certificate -qO DebianNET.sh 'http://arv.asuhu.com/dd/DebianNET.sh' && bash DebianNET.sh -dd 'http://arv.asuhu.com/dd/newS2008R2DATA.vhd.gz'
elif (($a==8));then
echo -e "\033[32m 8，Windows Server2012 R2 data center \033[0m"
wget --no-check-certificate -qO DebianNET.sh 'http://arv.asuhu.com/dd/DebianNET.sh' && bash DebianNET.sh -dd 'http://arv.asuhu.com/dd/S2012R2DATA2018410.vhd.gz'
elif (($a==9));then
echo -e "\033[32m 9，Windows Server2016 data center  \033[0m"
wget --no-check-certificate -qO DebianNET.sh 'http://arv.asuhu.com/dd/DebianNET.sh' && bash DebianNET.sh -dd 'http://arv.asuhu.com/dd/S2016DATA2018415.vhd.gz'
elif (($a==10));then
echo -e "\033[32m 10，Windows Server2019 data center  \033[0m"
wget --no-check-certificate -qO DebianNET.sh 'http://arv.asuhu.com/dd/DebianNET.sh' && bash DebianNET.sh -dd 'http://arv.asuhu.com/dd/S2019DATA20190225.vhd.gz'
else
echo
fi
exit 0;

else
echo
fi
