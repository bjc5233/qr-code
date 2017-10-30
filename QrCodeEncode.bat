@echo off& call loadE.bat CurS& call loadJ.bat QrCodeUtil
mode 124,62& %CurS% /crv 0& color F0

title %*
echo.& echo.& echo.& echo.& echo.& echo.& echo.& echo.
if "%2"=="" (
	for /f "eol=# delims=" %%i in ('%QrCodeUtil% -encode 0 %* "¨€" "  "') do echo                %%i
) else (
	for /f "eol=# delims=" %%i in ('%QrCodeUtil% -encode 0 %*') do echo                %%i
)
echo.& echo.& echo.& echo.& echo.& echo.
pause>nul