@echo off


if exist "StarterValues\regedit\Laung.txt" (
echo OK
) else ( 
echo ERROR
)






taskkill /IM explorer.exe /f

md System
md System\Sample
md System\Script
md System\Temp
md System\GUI
echo DONE!
cls
call systemrelay.bat