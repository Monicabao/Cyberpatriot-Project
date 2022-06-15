@echo off
title Admin and Guest
net user administrator /active:no
net user guest /active:no
title Firewall
netsh advfirewall set allprofiles state on
title Telnet
DISM /online /disable-feature /featurename:TelnetServer
DISM /online /disable-feature /featurename:TelnetClient
sc stop "TlnctSvr"
sc config "TlntSvr" start=disabled
title Remote Desktop
sc stop "TermService"
sc config "TermService" start = disabled
sc stop "SessionEnv"
sc config "SessionEnv" start = disabled
sc stop "UmRdpService"
sc config "UmRdpService" start = disabled
sc stop "RemoteRegistry"
sc config "RemoteRegistry" start = disabled
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d l /f
title Disable Guest Account
net user guest /active:no
title Lock-Out Policy
net accounts /lockoutthreshold:5 /MINPWLEN:8 /MAXPWAGE:30 /MINPWAGE:1 /UNIQUEPW:5
title Enable Updates
REM This registry key enables updates
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 4 /f
pause