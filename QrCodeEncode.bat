@echo off& call loadE.bat CurS fontSize& call loadJ.bat QrCodeUtil
::˵��
::  ��ά������
::����
::  QrCodeEncodeMin.bat 0 "���Զ�ά��" "��" "  "
mode 124,62& %fontSize% 3 5& %CurS% /crv 0& color F0& title %*
if "%1"=="" title ��ָ���ı�!& pause>nul& exit

echo.& echo.& echo.& echo.& echo.& echo.& echo.& echo.
if "%2"=="" (
	for /f "eol=# delims=" %%i in ('%QrCodeUtil% -encode 0 %* "��" "  "') do echo                %%i
) else (
	for /f "eol=# delims=" %%i in ('%QrCodeUtil% -encode 0 %*') do echo                %%i
)
echo.& echo.& echo.& echo.& echo.& echo.
pause>nul