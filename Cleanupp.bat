@echo off
:menu
cls
echo ..............................................
echo PRESS 1-5 to select your task or e to EXIT.
echo...............................................

echo 1 - Defragment 
echo 2 - Clean Temp 
echo 3 - Clean Logs and history
echo 5 - exit 


set /p M=Type 1-5 then press enter


if %M% ==1 goto :defragment
if %M% ==2 goto :Clean Temp
if %M% ==3 goto :Clean Logs and history
if %M% ==4  goto : remove unnecessary services 
if %M% ==5  exit


:Defragment 
@echo off
defrag c: -f
defrag d: -f
defrag e: -f
defrag f: -f
cls
goto :menu

:Clean Temp
@echo off 
del /s /f /q c:\windows\temp\*.*
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
cls
goto :menu 

:Clean Logs and history 
@echo off
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
cls 
goto :menu




