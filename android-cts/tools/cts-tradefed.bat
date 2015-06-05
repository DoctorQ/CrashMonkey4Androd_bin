@echo off
setlocal enabledelayedexpansion
setlocal ENABLEEXTENSIONS

::设置cts根目录,更改当前目录为批处理本身的目录 
set CTS_ROOT=%~dp0\..\..
::设置支持的jar包的根目录
set JAR_DIR=%CTS_ROOT%\android-cts\tools
::支持的jar包,一下项目中引用的jar包都要在启动的时候包含进来
set JARS=@echo off
setlocal enabledelayedexpansion
setlocal ENABLEEXTENSIONS

::设置cts根目录,更改当前目录为批处理本身的目录 
set CTS_ROOT=%~dp0\..\..
::设置支持的jar包的根目录
set JAR_DIR=%CTS_ROOT%\android-cts\tools
::支持的jar包,一下项目中引用的jar包都要在启动的时候包含进来
set JARS=chimpchat-22.2.0.jar commons-compress-1.8.1.jar ddmlib-prebuilt.jar gson-2.2.4.jar guava-17.0.jar hosttestlib.jar imagedraw.jar javalib-deviceinfo.jar javalib-deviceutil.jar jline-0.9.9.jar kxml2-2.3.0.jar tradefederation.jar cts-tradefed.jar junit.jar

set JAR_PATH=.
for %%i in (%JARS%) do (
	set JAR_PATH=!JAR_PATH!;%%i
)
java %RDBG_FLAG% -cp %JAR_PATH% -DCTS_ROOT=%CTS_ROOT% com.android.cts.tradefed.command.CtsConsole %*

pause

set JAR_PATH=.
for %%i in (%JARS%) do (
	set JAR_PATH=!JAR_PATH!;%%i
)
java %RDBG_FLAG% -cp %JAR_PATH% -DCTS_ROOT=%CTS_ROOT% com.android.cts.tradefed.command.CtsConsole %*

pause