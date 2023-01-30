@echo off
TITLE Bienvenid@ %USERNAME%
MODE con:cols=80 lines=40

:inicio
SET var=0
cls
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
echo  1    Opcion 1:Ver auto tunning  
echo  2    Opcion 2:Cambiar auto tunning a normal
echo  3    Opcion 3:Cambiar auto tunning a deshabilitado  
echo  4    Opcion 4:Speed Test OoKla   
echo  5    Salir
echo ------------------------------------------------------------------------------
echo.

SET /p var= ^> Seleccione una opcion [1-5]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto salir

::Mensaje de error, validación cuando se selecciona una opción fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op1
    echo.
    echo. Has elegido la opcion No. 1
    echo.
        netsh interface tcp show global
        color 07
    echo.
    pause
    goto:inicio

:op2
    echo.
    echo. Has elegido la opcion No. 2
    echo.
        netsh int tcp set global autotuninglevel=normal
        color 09
    echo.
    pause
    goto:inicio

:op3
    echo.
    echo. Has elegido la opcion No. 3
    echo.
        netsh int tcp set global autotuninglevel=disabled
        color 0A
    echo.
    pause
    goto:inicio
  
:op4
    echo.
    echo. Has elegido la opcion No. 4
    echo.
        start https://www.speedtest.net/es
        color 0B
    echo.
    pause
    goto:inicio

:salir
    @cls&exit