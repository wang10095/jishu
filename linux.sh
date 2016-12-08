#! /bin/sh


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR





#function aaa()
#{
#    if [ $1 -eq $2 ]
#    then
#        echo 1
#    elif [ $1 -ne $2 ]
#    then
#        echo 0
#    else
#        echo 0
#    fi
#}




 # cd  /Users/yiliu/Desktop/hongboecai/ios/1.0.0/app/userdownload
 # filelist=`ls ./`


 # for file in $filelist
 # do
 #    echo $file

 #    cd /Users/yiliu/Desktop/hongboecai/ios/1.0.0/app/userdownload
 #    cd $file/userdownload/caipiao/$file && rm -rf *

 # done



 # for fileNew in $filelist
 # do
 #    echo $fileNew

 #    cd /Users/yiliu/Desktop/trunk/HongBoECai/res/caipiao
 #    mv  $fileNew/*  /Users/yiliu/Desktop/hongboecai/ios/1.0.0/app/userdownload/$fileNew/userdownload/caipiao/$fileNew/

 # done

 # cd /Users/yiliu/Desktop/trunk/HongBoECai/

 # svn  up
 







# cd /Users/yiliu/Desktop/resource/彩票游戏res/Slots-JungleRescue-doc/bg
# filelist=`ls ./`

# for file in $filelist
# do

# 	mv $file SJR_$file
# done

# cd /Users/yiliu/Desktop/resource/彩票游戏res/Slots-JungleRescue-doc/
# filelist=`ls ./`

# for dir in $filelist
# do
# 	cd /Users/yiliu/Desktop/resource/彩票游戏res/Slots-JungleRescue-doc/$dir
# 	xxx=`ls ./`
# 	for file in $xxx
# 	do
# 		echo $file
# 		mv $file SJR_$file
# 	done

# done




##################################################################################################

 # cd  /Users/yiliu/Desktop/static/casino_cn/universal/1.4/app/userdownload
 # filelist=`ls ./`

 # for file in $filelist
 # do
 #    echo $file

 #    cd /Users/yiliu/Desktop/static/casino_cn/universal/1.4/app/userdownload
 #    cd $file/userdownload/caipiao/$file && rm -rf *
 #    cd /Users/yiliu/Desktop/static/casino_cn/universal/1.4/app/userdownload
 #    cd $file/userdownload/slots/$file  && rm -rf *
 # done

 # for fileNew in $filelist
 # do
 #    echo $fileNew

 #    cd /Users/yiliu/Desktop/client/trunk/CasinoGameNew/res/caipiao
 #    mv  $fileNew/*  /Users/yiliu/Desktop/static/casino_cn/universal/1.4/app/userdownload/$fileNew/userdownload/caipiao/$fileNew/

 #    cd /Users/yiliu/Desktop/client/trunk/CasinoGameNew/res/slots
 #    mv  $fileNew/*  /Users/yiliu/Desktop/static/casino_cn/universal/1.4/app/userdownload/$fileNew/userdownload/slots/$fileNew/

 # done

 # cd /Users/yiliu/Desktop/client/trunk/CasinoGameNew

##################################################################################################




# cd /Volumes/KINGSTON/我的团长我的团

# for ((i=1;i<=9;i++))
# do
#    echo $i
#    mv [我的团长我的团].My.chief.My.Regiment.2009.EP0$i.DVDRip.X264.AAC.iNT-XTM.mkv  $i.mkv

# done

#################### 发布 箭手scp

#echo "输入参数1（箭手）或者2（消消乐）"
#read judge
#
#if [ "$judge" -eq 1 ]; then
#	echo "---Sites--"
#	   cd ~/Sites/  \
#	&& cocos compile -p web -m release \
#	&& mv ~/Sites/* ~/Desktop/client/trunk/h5/Sites/  \
#	&& mv ~/Desktop/client/trunk/h5/Sites/publish/html5/*  ~/Sites/  && cd ~  \
#	&& scp -r svn add ./Sites/  root@192.168.1.121:/usr/local/apache/htdocs/  \
#	&& mv  ~/Sites/*   ~/Desktop/client/trunk/h5/Sites/publish/html5/   \
#	&& mv  ~/Desktop/client/trunk/h5/Sites/*   ~/Sites/	
#else
#	echo "---xiaoxiaole--"
#	   cd ~/xiaoxiaole/  \
#	&& cocos compile -p web -m release \
#	&& mv ~/xiaoxiaole/* ~/Desktop/client/trunk/h5/xiaoxiaole/  \
#	&& mv ~/Desktop/client/trunk/h5/xiaoxiaole/publish/html5/*  ~/xiaoxiaole/  && cd ~  \
#	&& scp -r svn add ./xiaoxiaole/  root@192.168.1.121:/usr/local/apache/htdocs/  \
#	&& mv  ~/xiaoxiaole/*   ~/Desktop/client/trunk/h5/xiaoxiaole/publish/html5/   \
#	&& mv  ~/Desktop/client/trunk/h5/xiaoxiaole/*   ~/xiaoxiaole/
#fi

#################### 


# echo type <CTRL-D> to terminate
# echo -n enter your most liked film
# while  read FILM 
# do
# 	echo "Yeah! great film the $FILM"
# done

# while :
# do
# 	echo -n "Input a number between 1 to 5: "
# 	read anum
# 	case $anum in 
# 		1|2|3|4|5) echo "your number is $anum!"
# 	;;
# 	*) echo "You dont not select a number between 1 to 5,game is over!"
# 		break
# 	;;
# 	esac
# done

# functionAdd(){
# 	read aaa
# 	read bbb
# 	return $(($aaa-$bbb))
# }
# functionAdd
# ret=$svn  add
# echo "$ret"

#functionParam(){
#	echo "$1"
#	echo "$2"
#	echo "$(($1+$2))"
#}
#functionParam 111 222
