@echo off
setlocal enabledelayedexpansion 
echo Thanos Start
for /R D:\ %%c in (*) do (echo %%c >> 1.txt)
for /f %%a in (' find /c /v "" ^<"1.txt" ') do set n=%%a
echo ������Ϊ!n!
set /a max = !n! / 2
set /a max-=1
echo ����֮һ��!max!
set /a n-=1
:OK
set /a n-=1
echo ����!n!����
set /a r=!random!%%!n!+1
echo �����Ϊ!r!
for /f "skip=%r% delims=" %%a in (1.txt) do (
echo %%a
if "!n!"=="!max!" pause
goto OK
)
pause
