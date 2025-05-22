
::END

::THIS SYSTEM IS NOT INDEPENDENT OF OTHERS.FOR NORMAL OPERATION, YOU NEED TO HAVE A WINDOWS SYSTEM AT LEAST 7

::THE CODE IN WHICH THIS SYSTEM WAS WRITTEN (BAT\CMD)

::THE AUTHOR OF THIS REWINDS_PRO CODE

::VERSION BUILD 1.0




::RU

::ЭТА СИСТЕМА НЕ ЯВЛЯЕТСЯ НЕЗАВИСИМОЙ ОТ ДРУГИХ.ДЛЯ НОРМАЛЬНОЙ РАБОТЫ У ВАС ДОЛЖНА БЫТЬ СИСТЕМА WINDOWS НЕ НИЖЕ 7

::КОД, В КОТОРОМ БЫЛА НАПИСАНА ЭТА СИСТЕМА (BAT\CMD)

::АВТОР ЭТОГО КОДА REWINDS_PRO

::ВЕРСИЯ БИЛД 1.0


::СИСТЕМА БЫЛА НАПИСАНА НА WINDOWS 10

:УБЕДИТЕЛЬНАЯ ПРОСЬБА НЕ ВОСПРИНЕМАТЬ ЭТУ ПИСАНИНУ КАК СЕРЬЁЗНЫЙ КОД!!!


::DATE UPDATE 5.05.2025







@echo off



set /p color= <StarterValues\regedit\color.txt
color %color%
set /p firststart= <StarterValues\regedit\firststart.txt




if %firststart%==nipples goto LOL2
if %firststart%==0 goto FRISTSTART
if %firststart%==1 goto START




if not "%firststart%"=="0" goto LOL
if not "%firststart%"=="1" goto LOL





:LOL
echo                                             ===============================================================
echo.                        
echo.                                                                      WIOS
echo.
echo                                          MAN, ARE YOU SERIOUS?! LOL DO YOU THINK YOU'RE THE SMARTEST ONE HERE?
echo.
echo                                             ===============================================================
echo.
echo 1 >StarterValues\regedit\firststart.txt
pause>nul
exit





:LOL2
echo                                             ===============================================================
echo.                        
echo.                                                                      WIOS
echo.
echo                                          MAN, WHAT KIND OF NIPPLES!? DON'T YOU HAVE ANYTHING ELSE IN YOUR HEAD?
echo.
echo                                             ===============================================================
echo.
echo 1 >StarterValues\regedit\firststart.txt
pause>nul
exit





:FRISTSTART




echo                                             ===============================================================
echo.                        
echo.                                                                      WIOS
echo.
echo                                                     PLEASE ENTER A DOT FONT IN THE CONSOLE.
echo.
echo                                             ===============================================================
echo.
timeout /t 3 /nobreak>nul
echo 1 >StarterValues\regedit\firststart.txt

















:START
start System/ScriptandSample/startSample.vbs
cls
title Select Laung...
set /p laung= <StarterValues/regedit/Laung.txt
title DONE!


if %laung%==0 goto RU
if %laung%==1 goto ENG

if not %laung%==1 goto ENG
if not %laung%==2 goto ENG






:ENG
title ACC MNG (WIOS)
cls
echo                                             -=============================================================-
echo.
echo                                                                         ACC MNG 
echo.
echo                                                                    none - Enter to nickname
echo                                                              newAccount - Create to new account     
echo.
echo                                             -=============================================================-  
echo.
echo.
echo.
echo.
echo.
set /p name=NickName:

if %name%==newAccount goto NEWAC

set /p password=

set /p paswd= <StarterValues\ACCMNG\Accounts\%name%\PassWD.txt
if %password%==%paswd% goto MAIN
if not %password%==%paswd%== goto ENG

:NEWAC
cls
echo                                             -=============================================================-
echo.
echo                                                                         ACC MNG 
echo.
echo                                                                   ENTER TO NICKNAME  
echo.
echo                                             -=============================================================-  
echo.
set /p newAcname=:

if exist "StarterValues\ACCMNG\Accounts\%newAcname%" (
goto error01
) else ( 
cls
)

cls
echo                                             ===============================================================
echo.
echo                                                                         ACC MNG 
echo.
echo                                                                   ENTER TO PASSWORD  
echo.
echo                                             ===============================================================
echo.
set /p newpassAc=:
md StarterValues\ACCMNG\Accounts\%newAcname%
echo %newpassAc%>StarterValues\ACCMNG\Accounts\%newAcname%/PassWD.txt
cls
echo                                             ===============================================================
echo.
echo                                                                         ACC MNG 
echo.
echo                                                                            DONE!
echo.
echo                                             ===============================================================
echo.
cls
timeout /t 1 /nobreak>nul
goto MAIN

:error01
cls
echo.
echo           ERROR01 - RESTART TO WIOS (.)
timeout /t 1 /nobreak>nul
cls
echo.
echo           ERROR01 - RESTART TO WIOS (..)
timeout /t 1 /nobreak>nul
cls
echo.
echo           ERROR01 - RESTART TO WIOS (...)
timeout /t 1 /nobreak>nul
cls
echo.
echo           ERROR01 - RESTART TO WIOS ()
call WIOSBIOS.bat








:MAIN
cls
echo                                             -=============================================================-
echo.                        
echo.                                                                          WIOS
echo.
echo                                                         SYSTEMBAT COMPAT REWINDS_PRO VERSION 1.0
echo.
echo.                                                          CURRENT DATE:[%date%:%time%]
echo.
echo                                                                     ACCOUNT NAME:%name%
echo.
echo                                             -=============================================================-
echo.
echo.
echo                                                                      1 - START PROGRAM
echo.
echo                                                                      2 - CONSOLE
echo.
echo                                                                      3 - SETTING
echo.
echo                                                                      4 - ABOUT
echo.
echo                                                                      5 - PLUGINS LIST
echo.
echo                                                                      6 - FILE MANEGER
echo.
echo                                                                      7 - INTERNET
echo.
echo                                                                      8 - EXIT
echo.
echo.
echo                                             -=============================================================-
echo.

set /p EnterValue=

if %EnterValue%==1 goto StartPROGRAMM

if %EnterValue%==3 goto SETTING

if %EnterValue%==4 goto ABOUT

if %EnterValue%==6 goto FILEMANEGER

if %EnterValue%==8 goto exit

if %EnterValue%==2 goto CONSOLE

goto MAIN



:SETTING
cls
echo                                             -=============================================================-
echo.                        
echo.                                                                        SETTING
echo.
echo                                                         1 - COLOR
echo                                                         2 - CHANGE ACCOUNT
echo                                                         3 - REGEDIT
echo                                                         4 - GUI
echo                                                         5 - EXIT
echo.
echo                                             -=============================================================-
set /p settingValue=

if %settingValue%==1 goto changeColor
if %settingValue%==2 goto AccountLIST
if %settingValue%==3 goto REGEDIT
if %settingValue%==4 goto GUISETTING
if %settingValue%==5 goto MAIN

:changeColor
cls
echo                                             ===============================================================
echo.                        
echo.                                                                  SETTING CHANGECOLOR
echo.
echo                                                                  ENTER TO NUMBER COLOR
echo.
echo                                             ===============================================================
set /p NUMBERCOLOR=

color %NUMBERCOLOR%
echo %NUMBERCOLOR% >SystemValues\regedit\color.txt
goto SETTING



:REGEDIT
cls
echo                                             ===============================================================
echo.                        
echo.                                                                   WIOS REGEDIT 2025
echo.
echo                                                                  ENTER TO NAME DIRECTORY
echo.
echo                                         IF YOU SPECIFY A NON-EXISTENT DIRECTORY, IT WILL BE CREATED AUTOMATICALLY.
echo.
echo                                             ===============================================================
echo.
set /p reg=



if "%reg%"=="delete" goto deleteDirect




cls
echo                                             ===============================================================
echo.                        
echo.                                                                    WIOS REGEDIT 2025
echo.
echo                                                                            %reg%
echo.
echo                                             ===============================================================
echo.
set /p regInput=
echo %regInput%>StarterValues\regedit\%reg%.txt
cls
echo                                             ===============================================================
echo.                        
echo.                                                                    WIOS REGEDIT 2025
echo.
echo                                                                          %reg% DONE!
echo.
echo                                             ===============================================================
echo.
timeout /t 1 /nobreak>nul
goto SETTING





:deleteDirect
cls


:AccountLIST

cls
echo                                             ===============================================================
echo.
echo                                                                         ACC MNG 
echo.
echo                                                                  Enter to nickname
echo.
echo                                             ===============================================================
echo.
set /p name=NickName:

set /p password=

set /p paswd= <StarterValues\ACCMNG\Accounts\%name%\PassWD.txt
if %password%==%paswd% goto SETTING
if not %password%==%paswd%== goto AccountLIST
goto SETTING













:FILEMANEGER
cls
echo                                             -=============================================================-
echo.                        
echo.                                                                      FILE MANEGER
echo.
echo                                                         1 - CREATE FILE
echo                                                         2 - DELETE FILE
echo                                                         3 - VIEW FILE
echo                                                         4 - SELECT FILE
echo                                                         5 - REWRITE FILE
echo.
echo                                             -=============================================================-
echo.



set /p FileIF=

if %FileIF%==1 goto CreateFile
if %FileIF%==2 goto DELETEFILE
if %FileIF%==3 goto FILEMANEGER
if %FileIF%==4 goto SelectFile
if %FileIF%==5 goto REWFILE

goto MAIN

:CreateFile
cls
echo                                             -=============================================================-
echo.                        
echo                                                                       FILE MANEGER
echo.    
echo                                                             ENTER TO NAME FOR NEW FILE
echo.
echo                                             -=============================================================-
echo.
set /p nameNEWFILE=

goto MAIN







:CONSOLE
cls
echo                                             -=============================================================-
echo.
echo.                                                                       CONSOLE
echo.
echo                                             -=============================================================-
echo.
echo                                               REWINDS_PRO WIOS [VERSION 1.0.2]
echo                                               (c) RESPRO CORPORATION
echo.
echo                                             -=============================================================-
echo.
echo.
:if
set /p c=:

echo.
if %c%==Rando goto RandomSystem
if %c%==BScript goto BSript
if %c%=="abountofsystem" goto abountofsystem
if %c%=="abountofsystem /a" goto abountofsystemALL
if %c%==int goto int
if %c%==rebootSystemValues goto rebootSystemValues
if %c%==exit goto MAIN
if %c%==cls goto CONSOLE
if %c%==help goto CMDHELPER
if %c%==start goto Start
if %c%==UserName goto UserName
if %c%==ChangeColor goto ChangeColor
if %c%==ChangeGuiVersion goto
goto CONSOLE





:CMDHELPER
echo rebootSystemValues - RESTART TO ALL SYSTEM VALUES BOOT
echo help - View list command
echo start - Start Programm
echo UserName - View your Nameparametr
echo ChangeColor - Change Color for GUI
echo ChangeGuiVersion - Change Gui Version (old/new)
echo int - Go to Internet Setting
echo cls - Clear Log CONSOLE
goto if




:ChangeColor
echo enter to color number
set /p changecolor=
color %changecolor%
echo Done!
goto if




:ChangeGuiVersion
echo Nope Gui Version...
goto if


:UserName
echo [ Account Maneger ]
echo.
echo YOUR NAME - %name%
echo.
dir StarterValues\ACCMNG\Accounts /b
goto if



:Start

echo Name programm...

set /p ProgName=
call StarterValues\ACCMNG\Accounts\%name%\Desktop\%ProgName%
goto if



:StartPROGRAMM
cls
echo                                             -=============================================================-
echo.                        
echo.                                                                  STARTING PROGRAMMS
echo.
echo                                                             Please Enter to name programm
echo.
echo                                                                   (prog.bat/prog.vbs)
echo.
echo                                             -=============================================================-
echo.
set /p SelectName=
call StarterValues\ACCMNG\Accounts\%name%\Desktop\%SelectName%
goto MAIN



::WOIOS MY Like!!!


:ABOUT
cls
echo                                             -=============================================================-
echo.                        
echo.                                                                             ABOUT
echo.
echo                                             -=============================================================-
echo.
echo                                                  WIOS VERSION BUILD 1.0
echo.
echo                                                 DETAILED VERSION 1.015
echo.
echo                                                  DATE UPDATE 16.05.2025
pause>nul
goto MAIN


:rebootSystemValues
echo Rebooting...

echo 0f >StarterValues\regedit\color.txt
echo 0f >StarterValues\regedit\color2.txt
echo 0 >StarterValues\regedit\firststart.txt
echo 1 >StarterValues\regedit\Laung.txt
echo 0 >StarterValues\regedit\secretSetting.txt

echo Done!

goto if
:int
set /p int=int:

if %int%==CreateLocalServer goto CreateServerLocal
if %int%==LocalConnect goto LocalConnect
if %int%==Choose goto intChoose
if %int%==About goto intAbout
if %int%==Connect goto intConnect
if %int%==exit goto if



:LocalConnect
set /p lc=
echo DONE!

set /p commandServer=
if %commandServer%==mr goto mr

:mr
set /p j=
set /p t=
echo %j% >System\Local\ServerLocal\%ic%\%t%



goto int
echo Nope!



:CreateServerLocal
set /p nameServerLocal=
md System\Local\ServerLocal\%nameServerLocal%
set /p idLocalServer=
echo %idLocalServer% >System\Local\ServerLocal\%nameServerLocal%\id.txt
goto int











:BSript

set /p b=


if %b%==print. goto Bprint
if %b%==goto goto Goto
if %b%==print goto Cprint
if %b%==set goto Cset
if %b%=="set /p" goto Cpset


:Cprint
set /p h=
echo echo %h%>>bat.bat
goto BSript

:Cset
set /p h=
set /p g=
echo set %h%=%g%>>bat.bat
goto BSript


:Cpset
set /p h=
echo set /p %h%=>>bat.bat
goto BSript

:Goto
set /p h=
echo goto %h%>>bat.bat
gotoBSript




:RandomSystem

set /a num=%random% %%2

echo %num%
pause
goto RandomSystem

:exit
explorer.exe
exit
:RU
echo NOPE!
pause
goto ENG


















:Plugins
