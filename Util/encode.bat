@echo off
if "%1"=="" goto usage
if "%2"=="" goto usage
if "%3"=="" goto usage

ffmpeg -i %1 -f rawvideo -pix_fmt gray -s %2 tmp.bin
824.exe tmp.bin %3
del tmp.bin
goto end

:usage
echo usage: encode.bat [input] [WxH] [output]

:end
echo.
