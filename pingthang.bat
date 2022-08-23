::Created this script to help users diagnose their personal network issues to some degree.
::This idea came from the constant network problems that arise in a hybrid/remote enviroment.
::Created by Bryant Wiggins 8/1/2022
@echo off
echo This script will be used to run basic network diagnositcs
echo.
::
::
set /p answer_1=Do you have a specifc address to scan? Enter (y/n) 
echo.
if %answer_1%==y set /p ip_address=Enter address here:
if %answer_1%==n (echo This program will now run an ipconfig
	ipconfig
	echo Find the IPv4 address you wish to scan from the results above
	echo.
	set /p ip_address=Please enter the ip address here:)
::
::This portion could very well be a function(I think). Still learning how to build them...
echo.
set /p answer_3=Would you like to run a continious ping? Enter (y/n)
echo.
echo To exit a continious ping press Ctrl + C
if %answer_3%==y ping -t %ip_address%
if %answer_3%==n ping %ip_address%

pause
exit