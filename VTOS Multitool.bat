@echo off
color 02
:z
cls
echo ========================================================================================================================
echo      888     888 888                                                 888 888    d8b 888                     888 
echo      888     888 888                                                 888 888    Y8P 888                     888 
echo      888     888 888                                                 888 888        888                     888 
echo      Y88b   d88P 888888 .d88b.  .d8888b       88888b.d88b.  888  888 888 888888 888 888888 .d88b.   .d88b.  888 
echo       Y88b d88P  888   d88""88b 88K           888 "888 "88b 888  888 888 888    888 888   d88""88b d88""88b 888 
echo        Y88o88P   888   888  888 "Y8888b.      888  888  888 888  888 888 888    888 888   888  888 888  888 888 
echo         Y888P    Y88b. Y88..88P      X88      888  888  888 Y88b 888 888 Y88b.  888 Y88b. Y88..88P Y88..88P 888 
echo          Y8P      "Y888 "Y88P"   88888P'      888  888  888  "Y88888 888  "Y888 888  "Y888 "Y88P"   "Y88P"  888 
echo ========================================================================================================================
echo network statistics - 1
echo DNS Servers        - 2
echo IPv4 information   - 3
echo IPv6 information   - 4
echo Wifi Passwords     - 5
echo wifi information   - 6
echo pinger             - 7
echo trace route        - 8
echo download HTML code - 9 (of a website)
echo Ethernet Stats     - 10
echo system file repair - 11 [admin needed]
echo ======================================
set /p car=Mode:  
if "%car%"=="1" goto a
if "%car%"=="2" goto b
if "%car%"=="3" goto c
if "%car%"=="4" goto d
if "%car%"=="5" goto e
if "%car%"=="6" goto f
if "%car%"=="7" goto g
if "%car%"=="8" goto h
if "%car%"=="9" goto i
if "%car%"=="10" goto j
if "%car%"=="11" goto k
:a
cls
netstat 
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:b
cls 
ipconfig /all | findstr DNS
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:c
ipconfig /all | findstr IPv4
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:d
ipconfig /all | findstr IPv6
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:e
cls
netsh wlan show profile
echo =========================================
set /p fish=Enter Wi-Fi: 
netsh wlan show profile "%fish%" key=clear | findstr "Key Content"
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:f
cls
netsh wlan show profile
echo ========================================
set /p fly=Enter Network: 
netsh wlan show profile "%fly%"
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:g
cls
set /p truck=Enter IP or website: 
set /p tow=How many packages: 
set /p grass=how many bytes of data: 
ping -n "%tow%" -l "%grass%" "%truck%"
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:h
cls
set /p bush=who will you trace too: 
set /p grassy=maximum hops: 
cls
tracert -h "%grassy%" "%bush%"
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:i
cls
set /p ipad=what website will you copy code from: 
cls
set /p iphone=will you copy(1) or make txt file(2) of code: 
if "%iphone%"=="1" goto m
if "%iphone%"=="2" goto n
:m
curl -s https://www."%ipad%" | clip
echo HTML code copied :D
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:n
curl -s https://www."%ipad%" >> "%ipad%".txt
echo File Made :D
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
:j
cls
echo ============================================
ipconfig /all | findstr DNS
echo ============================================
netstat -e | findstr Bytes
echo                          Recieved          Sent
echo ============================================
timeout /t 1
goto j
:k
cls
sfc /scannow
set /p macbook="do you want more(Y,N): "
if "%macbook%"=="Y" goto z
if "%macbook%"=="N" goto y
:y
pause
exit
