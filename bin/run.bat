@echo off
echo.
echo [��Ϣ] ʹ��Jar��������Web���̡�
echo.

cd %~dp0
cd ../railwaydisplay-admin/target

set JAVA_OPTS=-Xms256m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m

java -jar %JAVA_OPTS% railwaydisplay-admin.jar

cd bin
pause