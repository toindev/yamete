
mkdir %USERPROFILE%\yamete
copy .\ah.wav %USERPROFILE%\yamete\ah.wav
copy .\yamete.wav %USERPROFILE%\yamete\yamete.wav

@reg add "HKEY_CURRENT_USER\AppEvents\Schemes"                                             /t REG_SZ /d ".KanyeTest"  /f
@reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\.Default\.Current"             /t REG_SZ /d ""       /f
@reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current"        /t REG_SZ /d %USERPROFILE%\yamete\yamete.wav       /f
@reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current"      /t REG_SZ /d %USERPROFILE%\yamete\ah.wav       /f
