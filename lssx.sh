#! /bin/bash
wget https://github.com/a188037445/file-sharer/releases/download/1.0.5/file-sharer-1.0.5-linux-x64
mv file-sharer-1.0.5-linux-x64 file-sharer
chmod +xxx file-sharer
echo -e "\033[32m 1为默认80端口root目录 \033[0m"
echo -e "\033[32m 2为80端口所有目录 \033[0m"
echo -e "\033[32m 3为卸载程序 \033[0m"
echo -e "\033[32m 结束（关闭）直接断开ssh即可 \033[0m"
read -p "请输入序号：" a
if (($a==1));then
./file-sharer
elif (($a==2));then
./file-sharer /
elif (($a==3));then
killall file-sharer
rm -rf file-sharer
else
echo
fi


