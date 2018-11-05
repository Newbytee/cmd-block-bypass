@echo off 
cls
echo Newbyte's CMD && echo.
:A 
set /P x="%cd%: " 
%x% 
goto A
