@echo off

echo "Start Setup"

echo "------------------"

echo "Install Python 3"

cd %USERPROFILE%/AppData/Local/Temp

curl.exe --output ./python3.exe --url https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
python3.exe

echo "------------------"

echo "Install make"

choco install make

echo "------------------"

echo "Setup finished!"

pause

exit