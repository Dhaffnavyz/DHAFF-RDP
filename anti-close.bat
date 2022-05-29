@echo off
title Labondemand Anti-Close:
set /p id="Enter Lab Cliet ID: "
echo Waitting Chrome Installed!
timeout 10 >nul
taskkill /f /im chrome.exe
start chrome.exe  https://labondemand.com/LabInstance/ResumeWithKey/?key=%id%
@echo off
cls
title Delete Labs File TO Free Up Disk Space. DONT CLOSE.
cd C:\
echo on
rmdir /s /q AOSService
rmdir /s /q DumpPath
rmdir /s /q DynamicsDiagnostics
rmdir /s /q DynamicsSDK
rmdir /s /q DynamicsTools
rmdir /s /q EmptyDataset
rmdir /s /q FinancialReporting
rmdir /s /q Labs
rmdir /s /q PerfSDK
rmdir /s /q RetailSDK
rmdir /s /q RetailSelfService
rmdir /s /q RetailServer
rmdir /s /q RetailStorefront

exit
