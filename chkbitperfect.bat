@echo OFF

REM // build the ROM

REM // call build

REM  // run fc against a Sonic Spinball US ROM
echo -------------------------------------------------------------

if exist "_output\sbbuilt.gen" ( fc /b "_output\sbbuilt.gen" "Sonic_Spinball_US.gen"
) else echo sbbuilt.gen does not exist, probably due to an assembly error

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
