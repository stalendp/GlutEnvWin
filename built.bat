@echo OFF

rem please setting up the environemnts!
set VsDevCmd="C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"
set glutEnv="C:\Users\stale\Documents\GLUT_Env"

IF [%1]==[] (
	set /p filename=please enter the srcName : 
) else (
	set filename=%1
)

call %VsDevCmd%

rem set LINK=%glutEnv%\lib/freeglut.lib
cl /EHsc /I %glutEnv%\include /I %glutEnv%\include\vecmath %glutEnv%\lib/freeglut.lib /Foapp /Feapp %filename%

cmd /c start /b /w /D%glutEnv% app.exe
pause