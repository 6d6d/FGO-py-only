@echo off
echo %~dp0
set "_root=%~dp0..\..\..\..\"
set "PATH=%_root%Python311;%_root%Python311\Scripts;%_root%Git\mingw64\bin;%PATH%"
cd /d "%_root%FGO-py\FGO-py"
python ../../deploy/updater.py
python fgo.py cli --no-color 
