@echo off

if not exist "_output\" mkdir _output

set cmd_params=/k /p /o ae- spinball.asm, "_output\sbbuilt.gen" >"_output\error.log", , "_output\spinball.lst"

if exist "_output\sbbuilt.gen" (
  move /Y "_output\sbbuilt.gen" "_output\sbbuilt.prev.gen >NUL
)

if exist TOOLS\asm68k.exe (
  TOOLS\asm68k.exe %cmd_params%
  goto:assembler_completed
)

if exist TOOLS\axm68k.exe (
  TOOLS\axm68k.exe %cmd_params%
  goto:assembler_completed
)

echo Could not find supported assembler. Currently expects asm68k.exe or axm68k.exe

:final_pause
echo:
@pause
goto:eof

:assembler_completed
TOOLS\fixheadr.exe "_output\sbbuilt.gen"
type "_output\error.log"
goto:final_pause
