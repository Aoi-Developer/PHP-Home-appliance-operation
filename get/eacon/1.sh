#!/bin/sh
cd /var/www/html/get/eacon
if grep -q 1 1.txt;
	then
	 sed -i -e 's/1/0/g' 1.txt
	 bto_advanced_USBIR_cmd -d $(cat off.txt)
	 sed -i -e 's/接続/切断/g' /var/www/html/index.html
	 sed -i -e 's/接続/切断/g' /var/www/html/get/test.php
	 #echo `date +"%Y/%m/%d %p %I:%M:%S"`エアコンを切りました"\ >> log.txt
	else
	 sed -i -e 's/0/1/g' 1.txt
	 bto_advanced_USBIR_cmd -d $(cat danon.txt)
	 sed -i -e 's/切断/接続/g' /var/www/html/index.html
	 sed -i -e 's/切断/接続/g' /var/www/html/get/test.php
         #echo `date +"%Y/%m/%d %p %I:%M:%S"`エアコンをつけました"\ >> log.txt

fi




