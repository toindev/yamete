
mkdir %USERPROFILE%\yamete
cd %USERPROFILE%\yamete
powershell Invoke-WebRequest https://github.com/toindev/yamete/raw/main/ah.wav -OutFile ah.wav
powershell Invoke-WebRequest https://github.com/toindev/yamete/raw/main/yamete.wav -OutFile yamete.wav

@reg add "HKEY_CURRENT_USER\AppEvents\Schemes"                                             /t REG_SZ /d "Yamete"  /f
@reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\.Default\.Current"             /t REG_SZ /d ""       /f
@reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current"        /t REG_SZ /d "%USERPROFILE%\yamete\yamete.wav"       /f
@reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current"      /t REG_SZ /d "%USERPROFILE%\yamete\ah.wav"       /f

Write-Output Done!