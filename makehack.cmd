cd %~dp0
copy "fe2_clean.nes" "Hack.nes"
cd "%~dp0Event Assembler"
Core A FE8 "-output:%~dp0Hack.nes" "-input:%~dp0Buildfile.txt"
cd "%~dp0ups"

ups diff -b "%~dp0fe2_clean.nes" -m "%~dp0Hack.nes" -o "%~dp0Hack.ups"


pause