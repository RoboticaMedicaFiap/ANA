@echo off

echo "Start Setup"

echo "------------------"

echo "Install Python 3"

culr.exe --output /tmp/python3 --url https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
cd /tmp/
./python3.exe

echo "------------------"

echo "Install make"

choco install make

echo "------------------"

echo "Setup finished!"

exit
