@echo off
@color 0b
@title Stopping MySQL server...
echo.
rem ## Save return path
pushd %~dp0

rem ## Check to see if already stopped
if NOT exist server\usr\local\apache2\logs\httpd.pid goto :ALREADYKILLED

rem ## It exists is it running
SET /P pid=<server\usr\local\apache2\logs\httpd.pid
netstat -anop tcp | FIND /I " %pid%" >NUL
IF ERRORLEVEL 1 goto :NOTRUNNING
IF ERRORLEVEL 0 goto :RUNNING

:NOTRUNNING
rem ## Not shutdown using server_stop.bat hence delete files
del server\usr\local\apache2\logs\httpd.pid
del server\usr\local\mysql\data\mysql_mini.pid 
        
goto :ALREADYKILLED

rem ## It is running hence shut server down
:RUNNING
rem ## Get drive letter
SET /P Disk=<server\usr\local\apache2\logs\drive.txt

rem ## Remove pid file server was closed
del server\usr\local\mysql\data\mysql_mini.pid

rem ## Kill MySQL server
server\usr\local\mysql\bin\mysqladmin.exe --port=3306 --user=root --password=server shutdown

rem ## Kill Apache process and all it's sub-processes
SET killstring= -t "%pid%"
server\home\admin\program\pskill.exe  Apache_16.exe c

echo  MySQL  server stopped
echo  Apache server stopped

rem ## Remove pid file
del server\usr\local\apache2\logs\httpd.pid

rem ## Remove disk file
del server\usr\local\apache2\logs\drive.txt

rem ## Kill drive
subst %Disk%: /D

goto :END

:ALREADYKILLED
echo  MySQL  Server already stopped
echo  Apache Server already stopped
:END
echo.

:pause

rem ## Return to caller
popd