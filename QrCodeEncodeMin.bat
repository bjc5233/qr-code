@echo off& call load.bat _setFontSize

(%_call% ("3x5") %_setFontSize%)
call sleep 15
start QrCodeEncode.bat %*
call sleep 15
(%_call% ("8x16") %_setFontSize%)

::QrCodeEncodeMin.bat 0 "测试二维码" "█" "  "