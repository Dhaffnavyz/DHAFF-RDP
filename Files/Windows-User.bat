@echo off
:start
echo 1. Create user windows
echo 2. Check User
echo 3. Change password
echo 4. Exit

set/p "Option=>"
if "%Option%"=="" ( goto exitmenu )
if "%Option%"=="1" ( goto createacc )
if "%Option%"=="2" ( goto CheckUser )
if "%Option%"=="3" ( goto ChangePassword )
if "%Option%"=="4" ( goto exitmenu )
cls
goto start

:createacc
cls
echo Create new user windows 

set/p "User_name=Username>"
if "%User_name%"=="" ( goto tryuser )

set/p "Password=Password>"
if "%Password%"=="" ( goto trypass )

set/p "TryPassword=Try password>"
if "%TryPassword%"=="%Password%" ( goto createuser ) else ( goto trypassns)

:tryuser
echo do not empty the username
timeout 5
cls
goto start

:trypass
echo do not empty the password
timeout 5
cls
goto start

:trypassns
echo password not same
set "User_name="
set "Password="
timeout 5
cls
goto start

:createuser
echo ""
net user /add %User_name% %Password%
set "User_name="
set "Password="
pause
cls
goto start

:CheckUser
cls
net user
pause
cls
goto start

:ChangePassword
cls
echo Change password
set/p "User_name=Username>"
if "%User_name%"=="" ( goto tryuser )

set/p "Password=New Password>"
if "%Password%"=="" ( goto trypass )

set/p "TryPassword=Try password>"
if "%TryPassword%"=="%Password%" ( goto ChangePass ) else ( goto trypassns)

:ChangePass
cls
net user %User_name% %Password%
set "User_name="
set "Password="
pause
cls
goto start

:exitmenu