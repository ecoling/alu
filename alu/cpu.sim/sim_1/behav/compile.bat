@echo off
set xv_path=D:\\ÊµÏ°Èí¼þ\\Vivado\\Vivado\\2014.4\\bin
echo "xvlog -m64 -prj cpu_top_vlog.prj"
call %xv_path%/xvlog  -m64 -prj cpu_top_vlog.prj -log compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
