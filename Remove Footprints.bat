:: Last Update 26/12/20

@echo off
ECHO ===================
ECHO REMOVING FOOTPRINTS
ECHO ===================

@echo off
echo Current system Administrator: %username%

for /F "tokens=1,2" %%i in ('qwinsta /server:%COMPUTERNAME% ^| findstr "console"') do set LoggedUser=%%j

echo Current logged user: %LoggedUser% 
timeout /t 3

@echo off
ECHO Deleting temp files...
ECHO =====================================================================================================
DEL /F /S /Q C:\Users\%LoggedUser%\AppData\Local\Temp\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Diagnostics\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\OneDrive\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\InetCache\IE\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\WER\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\IECompatCache\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\IECompatUaCache\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\IEDownloadHistory\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\INetCache\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\INetCookies\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Terminal Server Client\Cache\*
DEL /s /F /Q C:\Windows\Downloaded Program Files\*
DEL /s /F /Q C:\Users\%LoggedUser%\Appdata\Local\D3DSCache\*
DEL /s /F /Q C:\Windows\Temp\*
DEL /s /F /Q C:\Windows\Offline Web Pages\*
DEL /s /F /Q C:\Window\Prefetch\*
DEL /s /F /Q C:\Users\%LoggedUser%\Appdata\Roaming\Microsoft\Windows\RecentDocs\*
DEL /s /F /Q C:\Users\%LoggedUser%\Appdata\Roaming\Microsoft\Windows\Recent\*
DEL /s /F /Q C:\Windows\LiveKernelReports\*
DEL /s /F /Q C:\ProgramData\Microsoft\Windows\WER\ReportArchive\*
DEL /s /F /Q C:\ProgramData\Microsoft\Windows\WER\ReportQueue\*
DEL /s /F /Q C:\Windows\Logs\CBS\*
ECHO.

ECHO Removing Optimization Files
ECHO =====================================================================================================
DEL /s /F /Q C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization
ECHO.


ECHO Removing Windows Update temp files...
ECHO =====================================================================================================
DEL /F /s /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\IconCacheToDelete\*
DEL /F /s /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\ThumbCacheToDelete\*
ECHO.

ECHO Removing Thumbnails...
ECHO =====================================================================================================
net stop wuauserv
net stop bits
DEL /F /s /Q C:\Windows\SoftwareDistribution\*
DEL /F /s /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\Explorer\*
net start wuauserv
net start bits
ECHO.


ECHO Deleting Recent files...
ECHO =====================================================================================================
ipconfig /flushdns
ECHO.


ECHO Deleting Recent files...
ECHO =====================================================================================================
DEL /s /F /Q %APPDATA%\Microsoft\Windows\Recent\*
DEL /s /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*
DEL /s /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*
DEL /s /F /Q C:\Windows\System32\sru\*
ECHO.

ECHO Chrome files...
ECHO =====================================================================================================
DEL /s /F /Q "C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\History"
DEL /s /F /Q "C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\History Provider Cache"
DEL /s /F /Q "C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\History-journal"
DEL /s /F /Q "C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\Visited Links"
DEL /s /F /Q "C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\Cookies"
DEL /s /F /Q "C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\Web Data"
DEL /s /F /Q "C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\Current Session"
DEL /s /F /Q "C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\Last Session"
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\Cache\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\GPUCache\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\Storage\ext\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\Service Worker\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Google\Chrome\User Data\Default\ShaderCache\*
ECHO. 
 


ECHO Deleting Event logs...
ECHO =====================================================================================================
DEL /s /F /Q C:\Windows\System32\winevt\Logs\*
DEL /s /F /Q C:\ProgramData\Microsoft\Windows\WER
DEL /s /F /Q C:\PerfLogs
DEL /s /F /Q C:\Windows\pchealth\ERRORREP\*
DEL /s /F /Q C:\ProgramData\Microsoft\Windows\WER\ReportQueue\*
DEL /s /F /Q C:\Windows\Installer\$PatchCache$\Managed\*
DEL /s /F /Q C:\Windows\Logs\WindowsUpdate\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\IconCache.db
DEL /s /F /Q C:\Windows\System32\catroot2\*
DEL /s /F /Q C:\Windows\Logs\*
DEL /s /F /Q C:\Windows\security logs\*
DEL /s /F /Q C:\Windows\debug\WIA\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Diagnostics\*
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\ConnectedDevicesPlatform\*
DEL /s /F /Q C:\ProgramData\USOShared\Logs\*
DEL /s /F /Q C:\ProgramData\Microsoft\Windows Security Health\Logs\*
DEL /s /F /Q C:\Windows\Panther\UnattendGC\*
DEL /s /F /Q C:\Windows\Panther\cbs.log
DEL /s /F /Q C:\Windows\Panther\DDACLSys.log
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Local\Microsoft\Windows\WebCache\*
DEL /s /F /Q C:\Windows\debug\*
DEL /s /F /Q C:\Windows\security\logs\*
DEL /s /F /Q C:\Windows\WindowsUpdate.log
DEL /s /F /Q C:\Windows\setuperr.log
DEL /s /F /Q C:\Windows\setupact.log
DEL /s /F /Q C:\Windows\PFRO.log
DEL /s /F /Q C:\Windows\lsasetup.log
DEL /s /F /Q C:\Windows\DtcInstall.log
DEL /s /F /Q C:\Windows\DirectX.log
DEL /s /F /Q C:\Windows\*.log
ECHO.

ECHO Deleting typed commands and programs...
ECHO =====================================================================================================
REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /VA /F
REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /VA /F
REG Delete HKCU\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs /VA /F
REG Delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery /VA /F
ECHO.

ECHO Deleting Windows Defender logs/junk...
ECHO =====================================================================================================
DEL /s /F /Q C:\ProgramData\Microsoft\Windows Defender\Scans\History\Results\Resource\*
DEL /s /F /Q C:\ProgramData\Microsoft\Windows Defender\Scans\History\Service\History.Log
DEL /s /F /Q C:\ProgramData\Microsoft\Windows Defender\Scans\History\Service\Detections.log
DEL /s /F /Q C:\ProgramData\Microsoft\Windows Defender\Scans\History\Service\Unknown.Log
DEL /s /F /Q C:\Users\%LoggedUser%\AppData\Roaming\DMCache\settings.bak

ECHO Deleting recycle bin...
ECHO =====================================================================================================
rd /s /q %systemdrive%\$RECYCLE.BIN
ECHO.

FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo All Event Logs have been cleared!
goto theEnd

:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof

:theEnd
ECHO =========
ECHO COMPLETED
ECHO =========
pause











