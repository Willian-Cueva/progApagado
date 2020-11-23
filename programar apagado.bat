@echo off

:menu
cls
title Programar Apagado
color 0A
echo Programa Elaborado por: Willian Cueva
echo ==========================================
echo = Programar apagado en:                  =
echo = 1) Segundos                            =
echo = 2) Minutos                             =
echo = 3) Horas                               =
echo = 4) Cancelar Apagado                    =
echo = 5) Apagado forzado inmediato           =
echo = 6) Reiniciar Computador                =
echo = 7) Salir                               =
echo ==========================================
echo.
set /p tim=eliga una opcion:
if %tim%==1 goto segundos
if %tim%==2 set v=60 & goto minutos
if %tim%==3 set v=3600 & goto horas
if %tim%==4 shutdown /a /f
if %tim%==5 shutdown /f /p
if %tim%==6 shutdown /t 6 /r
if %tim%==7 exit
goto menu

:segundos
cls
echo ***SEGUNDOS***
echo.
set /p per= En cuantos segundos desea apagar?:
echo el computador se apagara en %per% segundos
shutdown /t %per% /s
echo presiona Enter para continuar...
pause>nul
goto menu

:minutos
cls
echo ***MINUTOS***
echo.
set /p per= En cuantos minutos desea apagar?:
set /a por=v*%per%
echo el computador se apagara en %per% minutos
shutdown /t %por% /s
echo presiona Enter para continuar...
pause>nul
goto menu

:horas
cls
echo ***HORAS***
echo.
set /p per= En cuantas horas desea apagar?:
set /a por=v*%per%
echo el computador se apagara en %per% horas
shutdown /t %por% /s
echo presiona Enter para continuar...
pause>nul
goto menu

