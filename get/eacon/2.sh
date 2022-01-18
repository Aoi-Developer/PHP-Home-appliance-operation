#!/bin/sh
cd /var/www/html/get/eacon
if grep -q 1 2.txt;
	then
	 sed -i -e 's/1/0/g' 2.txt
         sed -i -e 's/danon.txt/reion.txt/g' 1.sh
	 sed -i -e 's/暖房設定/冷房設定/g' /var/www/html/index.html
	 sed -i -e 's/暖房設定/冷房設定/g' /var/www/html/get/test.php
         #echo `date +"%Y/%m/%d %p %I:%M:%S"`システムは冷房モードに切り替わりました"\ >> log.txt
	else
	 sed -i -e 's/0/1/g' 2.txt
         sed -i -e 's/reion.txt/danon.txt/g' 1.sh
	 sed -i -e 's/冷房設定/暖房設定/g' /var/www/html/index.html
	 sed -i -e 's/冷房設定/暖房設定/g' /var/www/html/get/test.php
	 #echo `date +"%Y/%m/%d %p %I:%M:%S"`システムは暖房モードに切り替わりました"\ >> log.txt


fi
