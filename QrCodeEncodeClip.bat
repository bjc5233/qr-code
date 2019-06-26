@echo off& call loadJ.bat QrCodeUtil
(for /f "eol=# delims=" %%i in ('%QrCodeUtil% -encode 0 %* "¨€" "  "') do echo %%i)>%temp%\QrCodeEncodeClip.txt
clip<%temp%\QrCodeEncodeClip.txt& exit