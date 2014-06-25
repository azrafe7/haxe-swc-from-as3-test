@echo off
rem clean
del bin\*.* /q
del as3\lib\*.* /q
echo Project cleaned (bin and as3\lib folders).
echo.

echo Building Haxe version (bin\flash\bin\TestHaxe.swf)...
call lime build haxe\project.xml flash --app-path="..\bin"
if errorlevel 1 goto fail
if errorlevel 0 echo ...done
echo.
pause

echo.
echo Running Haxe version (bin\flash\bin\TestHaxe.swf)...
start bin\flash\bin\TestHaxe.swf
if errorlevel 1 goto fail
if errorlevel 0 echo ...done
echo.
pause

echo.
echo Building SWC (as3\lib\mylib.swc)...
haxe build_swc.hxml
if errorlevel 1 goto fail
if errorlevel 0 echo ...done
echo.
pause

echo.
echo Building AS3 version with SWC (bin\TestSWCfromAS3.swf)...
mxmlc -debug -l as3\lib\mylib.swc -static-link-runtime-shared-libraries -file-specs as3\src\Main.as -o bin\TestSWCfromAS3.swf
if errorlevel 1 goto fail
if errorlevel 0 echo ...done
echo.
pause

echo.
echo Running AS3 version with SWC (bin\TestSWCfromAS3.swf)...
start bin\TestSWCfromAS3.swf
if errorlevel 1 goto fail
if errorlevel 0 echo ...done
goto end

:fail
echo.
echo Errors encountered.
pause
:end