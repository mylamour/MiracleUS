./start.sh | > /dev/null
#运行一个脚本之后，终端大量字符刷屏，可以重定向到垃圾区，其实不加管道符也可以的


find <directory> -type f -name "*.c" | xargs grep "<strings>"
#example: find RoboCup3D/ -type f -name "*.java" | xargs grep -n "readFileBehaviors" > thisisatest
#上面的命令是在robocup3d文件夹中在所有后缀为java的文件中找到包含“readFileBehaviors”字符的文件。grep不加'-n'选项的话不能给出确切行数，然后将所有结果重定向

find ~/ -name 'core*' -exec rm {} ;
#这个命令找到匹配～目录下符合上面那个表达式的文件(路径),然后会替换到大括号里，所以很显然的就被rm了

scp binary name@host://path
#example: scp hello.tar.gz root@192.168.1.102:/home/lamour/test
#将hello.tar.gz文件上传到远程服务器上，或者服务器的特定路径下

tar -xvzf -O GBK hello.tar.gz
#解压hello.tar.gz为GBK编码格式的

rm -rf Directory
chmod -R 777 *
#听说所有直接加777的都是傻逼，以前我不觉得，现在我觉得以前我的行为很傻X，平时运行命令不要动不动就切到ROOT，需要权限的时再用sudo !!就行了 
# -R 或 -r 一般代表递归

sudo !!
#意思就是sudo执行上一条命令

#一般在文本编辑器中(GUI界面)，按shift和上下左右用来选中特定区域文本


cp filename.{txt,backup}
#example: cp test.{txt,backup}	意味着复制test.txt为test.backup，其实不推荐这种写法，还不如cp file1 file2好用，但是路径长的话用这个就可以少敲一遍路径

cat > myfile.txt
#用这个，针对文本不长的，用来记个东西比较方便，不必要用开vi了。输入命令之后会进入输入状态

cat {file1, file2, file3} > file123
#这个命令就是把前面三个文件合并到一个文件中去

cat *.list | sort | uniq
#合并并排序，然后删除所有重复的行

echo 300 >/sys/class/backlight/intel_backlight/brightness
#上面的命令可以改变屏幕亮度

wget -r -p -np -k -P ~/tmp/ http://iami.xyz
#可以用来做做镜像站，反正就是把所有东西都抓下来了。但是有时有例外

wget -r ftp://anonymous:anonymous@chaosscripting.net/competitions/RoboCup
#像上面这个站，我在实验室的电脑整整开了两个多星期才把我想要的数据抓回来，其实也没多少数据，只是到服务器的路上需要经过太多节点。记得还有多开几个进程


mkdir /mnt/
mount -a /dev/adb1 /mnt/sdb1
dd if = xxx.iso of=/dev/sdb1
#用来刻盘，中间那个是用来挂载usb，手动挂(如果没有自动挂，你就手动挂)


ntfsfix /dev/sda1
#这个命令是用来修复ubuntu下挂载windows分区出错的问题，记住哪个有问题就是哪个，可能是sda2,sda3


du -h --max-depth=1
#以人类可读的方式(M或K，不是那种全是咔咔咔多少ｋ)显示深度为多少的目录占容量大小

python -m SimpleHTTPServer 8000
#这个爽，尤其是在统一局域网内，也别连数据线了，直接在你想要传输数据的目录输入这个，直接访问ip地址就行了











