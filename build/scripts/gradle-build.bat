@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  gradle-build startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_BUILD_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\gradle-build-1.0-SNAPSHOT.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\library-module-1.0-SNAPSHOT.jar;%APP_HOME%\lib\base-jetty9-SNAPSHOT.jar;%APP_HOME%\lib\grapher-client-0.0.1-SNAPSHOT.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.7.jar;%APP_HOME%\lib\configurator-client-1.0-SNAPSHOT.jar;%APP_HOME%\lib\configurator-shared-1.0-SNAPSHOT.jar;%APP_HOME%\lib\json-lib-0.9.jar;%APP_HOME%\lib\commons-beanutils-1.7.0.jar;%APP_HOME%\lib\commons-logging-1.1.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\dnsjava-2.0.1.jar;%APP_HOME%\lib\telavox-commons-2.0-SNAPSHOT.jar;%APP_HOME%\lib\joda-time-1.4.jar;%APP_HOME%\lib\apache-jsp-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-annotations-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-plus-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-webapp-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-servlet-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-security-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-server-9.2.13.v20150730.jar;%APP_HOME%\lib\apache-jstl-9.2.13.v20150730.jar;%APP_HOME%\lib\groovy-all-1.7.2.jar;%APP_HOME%\lib\redstone-1.1.1.jar;%APP_HOME%\lib\jsonrpc4j-0.24.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.7.jar;%APP_HOME%\lib\raven-7.6.0-tvx.jar;%APP_HOME%\lib\jackson-databind-2.3.1.jar;%APP_HOME%\lib\jackson-core-2.3.1.jar;%APP_HOME%\lib\jackson-annotations-2.3.1.jar;%APP_HOME%\lib\log4j-core-2.5.jar;%APP_HOME%\lib\log4j-api-2.5.jar;%APP_HOME%\lib\HdrHistogram-2.1.9.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\jetty-http-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-io-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-xml-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-jndi-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-util-9.2.13.v20150730.jar;%APP_HOME%\lib\apache-jsp-8.0.9.M3.jar;%APP_HOME%\lib\jetty-schemas-3.1.M0.jar;%APP_HOME%\lib\org.eclipse.jdt.core-3.8.2.v20130121.jar;%APP_HOME%\lib\taglibs-standard-spec-1.2.1.jar;%APP_HOME%\lib\taglibs-standard-impl-1.2.1.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\asm-commons-5.0.1.jar;%APP_HOME%\lib\asm-tree-5.0.1.jar;%APP_HOME%\lib\asm-5.0.1.jar;%APP_HOME%\lib\ezmorph-0.8.1.jar;%APP_HOME%\lib\commons-lang-2.2.jar;%APP_HOME%\lib\slf4j-api-1.7.21.jar;%APP_HOME%\lib\libphonenumber-8.8.7.jar;%APP_HOME%\lib\commons-lang3-3.7.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\json-20090211.jar;%APP_HOME%\lib\apache-el-8.0.9.M3.jar;%APP_HOME%\lib\logkit-1.0.1.jar;%APP_HOME%\lib\avalon-framework-4.1.3.jar;%APP_HOME%\lib\junit-3.8.1.jar;%APP_HOME%\lib\jaxen-1.1-beta-8.jar;%APP_HOME%\lib\xom-1.1.jar;%APP_HOME%\lib\xmlParserAPIs-2.6.2.jar;%APP_HOME%\lib\xercesImpl-2.6.2.jar;%APP_HOME%\lib\xalan-2.7.0.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\jdom-1.0.jar

@rem Execute gradle-build
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_BUILD_OPTS%  -classpath "%CLASSPATH%" se.johan.stuff.MainClass %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GRADLE_BUILD_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GRADLE_BUILD_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
