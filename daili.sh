xt=`cat /etc/redhat-release`
xt1="CentOS"
if [[ $xt == *$xt1* ]];then
    echo "系统为centos"
    echo "开始搭建"
yum install curl squid -y

else
    echo "系统为debian/ubuntu"
echo "开始搭建"
apt-get install curl squid -y

fi

#获得ip
ip=`curl "http://members.3322.org/dyndns/getip"`
#修改/etc/squid/squid.conf
sed -i 's/http_access deny all/http_access allow all/g' /etc/squid/squid.conf
#修改/etc/profile全局代理
cat >> /etc/profile <<hh
export http_proxy=http://$ip:3128
export https_proxy=http://$ip:3128
hh

#启动
systemctl start squid



