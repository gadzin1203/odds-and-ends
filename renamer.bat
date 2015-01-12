@echo off

REM Renames (recent) files with filename format MMDDYY.txt to YYMMDD.txt

SETLOCAL enabledelayedexpansion
for %%f in (????1?.txt) do (
	set dt=%%~nf
REM dt is now MMDDYY
	set yr=!dt:~-2!
REM yr is now YY
	ren %%f !yr!!dt:~0,4!.txt
)
ENDLOCAL