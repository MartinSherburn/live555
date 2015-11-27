@echo off

title build_live

:: Change this to the correct location.
call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x86

:::::::::::::::::::::::::::::::::::::

call genWindowsMakefiles

cd BasicUsageEnvironment
nmake /B -f BasicUsageEnvironment.mak

cd ..\groupsock
nmake /B -f groupsock.mak

cd ..\liveMedia
nmake /B -f liveMedia.mak

cd ..\UsageEnvironment
nmake /B -f UsageEnvironment.mak

cd ..\mediaServer
nmake /B -f mediaServer.mak

cd ..\testProgs
nmake /B -f testProgs.mak

:::::::::::::::::::::::::::::::::::::
