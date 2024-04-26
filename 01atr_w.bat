echo off
rem mode co80
:again
w:
cd w:\01system\pawlak

be 01system.dat
be ask " " KACSZPD1 DEF=1

IF NOT ERRORLEVEL 2 goto KONIEC
if not errorlevel 3 goto MM
if not errorlevel 4 goto CZUWANIE 
if not errorlevel 5 goto OLD01S
if not errorlevel 6 goto ZEST
if not errorlevel 7 goto MOVEMM
if not errorlevel 8 goto DAGA
if not errorlevel 9 goto SPR

:SPR
cd\
w:
cd w:\01system\
call 01s_lat.bat
goto again

:CZUWANIE

move d:\01system\modem\*.rar d:\01system\modem\temp\

copy w:\01system\elios.01s\*.d*    d:\01system\modem\RAR\elios\*.d*  
copy w:\01system\elios.01s\*.lst   d:\01system\modem\RAR\elios\*.lst
copy w:\01system\portal.01s\*.d*   d:\01system\modem\RAR\portal\*.d*
copy w:\01system\portal.01s\*.lst  d:\01system\modem\RAR\portal\*.lst
copy w:\01system\phuatr.01s\*.d*   d:\01system\modem\RAR\phuatr\*.d*
copy w:\01system\phuatr.01s\*.lst  d:\01system\modem\RAR\phuatr\*.lst

cd\
d:
cd d:\01system\modem\
c:\progra~2\winrar\winrar.exe a -x@list.txt -agDD -ep -m5 biezelios.rar  d:\01system\modem\rar\elios\*.*
c:\progra~2\winrar\winrar.exe a -x@list.txt -agDD -ep -m5 biezportal.rar d:\01system\modem\rar\portal\*.*
c:\progra~2\winrar\winrar.exe a -x@list.txt -agDD -ep -m5 biezphuatr.rar d:\01system\modem\rar\phuatr\*.*

rem ..\pawlak\unrar.exe e c:\01system\modem\biezbiel*.rar c:\01system\modem\unrar 
goto again

:MOVEMM

move d:\01system\modem\*.rar d:\01system\modem\temp\
cd\
d:
cd d:\01system\modem\
c:\progra~2\winrar\winrar.exe a -agMMDD -r -ep2 -m5 zuzia8_2007_pawlak_.rar c:\Progra~1\Zuzia8\Dane\2007\

goto again

:ZEST

move d:\01system\modem\*.rar d:\01system\modem\temp\
cd\
d:
cd d:\01system\modem\
c:\progra~2\winrar\winrar.exe a -agMMDD -r -ep2 -m5 zuzia8_all_pawlak_.rar c:\Progra~1\Zuzia8\Dane\

goto again

:DAGA

move d:\01system\modem\*.rar d:\01system\modem\temp\

cd\
d:
cd d:\01system\modem\
c:\progra~2\winrar\winrar.exe a -agMMDD -r -ep2 -m5 zuzia8_all_daga_.rar v:\Progra~1\Zuzia8\Dane\

goto again

:OLD01S
cd\
c:
cd c:\mc\
call mc1.bat
goto again

:MM
cd c:\PCANY
AWHOST -M=W 
goto again

:KONIEC
cls
exit

rem a
rem -agDD  czas czieñ miesi¹ca
rem -r  przeszukaj podfoldery
rem -ep nie zachowuj œciezek   -ep2 zachowuj œciezki
rem -m5 najwieksza kompresja