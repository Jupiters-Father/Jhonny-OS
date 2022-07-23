@echo off
title LOADING...
start userlogs.txt
pskill notepad.exe
cls
:boot
echo BOOTING JHONNY OS FROM VIRTUAL DRIVE...
ping loacalhost -n 10 >nul
cls
goto :login
:login
Title Login
set tries=3
:top
cls
set /a tries=%tries% -1
if %tries%==0 (
goto penalty
)
Echo You have %tries% attempts left.
Echo Please enter your password to proceed
set /p password=
if %password%==1234 (
echo LOADING DESKTOP
ping localhost -n 5 >nul
cls
goto :main
pause
cls
) else (
goto :penalty
)
goto top
:penalty
Echo WRONG
goto :top

:main
title Desktop
:: all commands
echo 1 for pskill
echo 2 for whoisClient
echo 3 for Make dir
echo 4 for cmd
echo 5 to make user folder
echo 6 to make file
echo 7 to Del Files
echo 8 to edit file in notepad
echo 9 to run file
set/p "ans=User@ROOT#"
:: answer checker
if %ans%== 1 goto :1

if %ans%== 2 goto :2

if %ans%== 3 goto :3

if %ans%== 4 goto :4

if %ans%== 5 goto :5

if %ans%== 6 goto :6

if %ans%== 7 goto :8

if %ans%== 8 goto :7

if %ans%== 9 goto :9

if %ans%== pornhub goto :ph

:1
cls
start killprocess.bat
goto :main
:2
cls
start whoisClient.bat
goto :main
:3
cls
echo ENTER THE NAME OF THE USER YOU WANT THE DIR MADE IN
set/p "USER=>"
cd %USER%
set/p "name=>"
mkdir %name%
cls
goto :main
:4
cls
start cmd.bat
goto :main
:5
cls
echo ENTER THE NAME OF THE USER
set/p "name=>"
mkdir %name%
echo make sure to start cmd and cd from there
goto :main
:6
cls
echo What User Folder Do You Want The file To Be Made in
set/p "ans=>"
cd %ans%
cls
echo Enter The Name OF THE FILE
set/p "ans=>"
cls
echo enter extension
set/p "ext=>"
cd 
fsutil file createnew %ans%.%ext% 1
cls
goto :main
:7
cls
echo enter user where file is present
set/p "cd=>"
cd %cd%
cls
echo enter file name
set/p "ans=>"
cls
echo enter file ext
set/p "ext=>"
cls
start notepad.exe %ans%.%ext%
cls
cd User@Root#
goto :main
:8
Echo goto the user you want
set/p "ans=>"
cd %ans%
cls
echo enter file name
set/p "file=>"
del %file%
cls
cd User@Root#
goto :main
:9
Echo goto the user you want
set/p "ans=>"
cd %ans%
cls
echo WHAT FILE DO YOU WANT TO RUN Enter with extention
set/p "file=>"
start %file%
cls
cd User@Root#
goto :main
:ph
start www.pornhub.com
cls 
goto :main