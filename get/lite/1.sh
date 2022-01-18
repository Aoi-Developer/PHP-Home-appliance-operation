#!/bin/sh
cd /var/www/html/get/lite
if grep -q 1 1.txt;
	then
	 sed -i -e 's/1/0/g' 1.txt
	 bto_advanced_USBIR_cmd -d $(cat light_off.txt)
	 sed -i -e 's/点灯/消灯/g' /var/www/html/index.html
	 sed -i -e 's/点灯/消灯/g' /var/www/html/get/test.php
	 #echo `date +"%Y/%m/%d %p %I:%M:%S"`LEDを切りました"\ >> log.txt
	else
	 sed -i -e 's/0/1/g' 1.txt
	 bto_advanced_USBIR_cmd -d $(cat light_on.txt)
	 #echo `date +"%Y/%m/%d %p %I:%M:%S"`LEDをつけました"\ >> log.txt
	 sed -i -e 's/消灯/点灯/g' /var/www/html/index.html
	 sed -i -e 's/消灯/点灯/g' /var/www/html/get/test.php

fi
