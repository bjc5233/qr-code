@echo off& set base=lib\loadJars
for %%i in (%*) do (
	if /i %%i==Md5Util (
		set %%i=java -Dfile.encoding^^=UTF-8 -jar %base%\%%i.jar
	) else (
		set %%i=java -jar %base%\%%i.jar
	)
)