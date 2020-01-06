<powershell>
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco install -y gow notepadplusplus.install 7zip.install firefox googlechrome
net user Administrator "chandu"
winrm quickconfig -q | Out-Null
@'
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="512"}'
winrm set winrm/config '@{MaxTimeoutms="1800000"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
Start-Service WinRM
set-service WinRM -StartupType Automatic
Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP-PUBLIC" -RemoteAddress Any
'@ > "C:/users/administrator/winrmSetup.ps1"
Invoke-Expression "C:/users/administrator/winrmSetup.ps1"
</powershell>