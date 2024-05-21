### Update Help for Modules
Write-Host "Updating Help..." -ForegroundColor "Yellow"
Update-Help -Force


Disable-GameBarTips
Disable-BingSearch
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowFullPathInTitleBar -DisableShowRecentFilesInQuickAccess -EnableExpandToOpenFolder

# Enable chocolaty global confirm
choco feature enable -n=allowGlobalConfirmation

choco install chocolateygui               --limit-output

# Install SSH
# if((get-command ssd -ErrorAction SilentlyContinue).Path.length = 0 ){
#     # Install the OpenSSH Client
#     Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

#     # Install the OpenSSH Server
#     Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

#     # Start the sshd service
#     Start-Service sshd

#     # OPTIONAL but recommended:
#     Set-Service -Name sshd -StartupType 'Automatic'

#     # Confirm the Firewall rule is configured. It should be created automatically by setup. Run the following to verify
#     if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
#         Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' does not exist, creating it..."
#         New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
#     } else {
#         Write-Output "Firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."
#     }
# }

# chocolatey: dev tools
choco install git.install           --limit-output -params '"/GitAndUnixToolsOnPath /NoShellIntegration"'
choco install gitextensions         --limit-output
choco install kdiff3                --limit-output
choco install Fiddler               --limit-output
choco install bat               --limit-output
choco install awscli               --limit-output
choco install Fiddler               --limit-output
choco install postman               --limit-output
choco install docker-desktop               --limit-output
choco install bat
choco install gh
choco install github-desktop
choco install microsoft-windows-terminal
choco install poshgit
# Set-ExecutinPolicy Unrestricted --Do better
#Productivity
choco install google-drive-file-stream               --limit-output
choco install notion               --limit-output
choco install powertoys               --limit-output

# chocolatey: vscode + exenstions
choco install vscode                --limit-output

Refresh-Environment #Load `code` to path
# Generate this list with ` code --list-extensions | % { "code --install-extension $_" }`
code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension github.vscode-pull-request-github
code --install-extension hashicorp.hcl
code --install-extension hashicorp.terraform
code --install-extension ms-azuretools.vscode-docker #Docker tools  (not just Azure)
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.remote-containers
# code --install-extension vscjava.vscode-java-pack # java tools
# code --install-extension DavidAnson.vscode-markdownlint
# code --install-extension ms-vscode.powershell
# code --install-extension ms-vscode-remote.remote-ssh # SSH remote

#Social
choco install slack               --limit-output
choco install discord               --limit-output
choco install whatsapp               --limit-output
choco install zoom               --limit-output

#Settings
## Disable desktop icons
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name HideIcons -Value 1
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name ShowCortanaButton -Value 0
## Snap Prefernces 
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name SnapFill -Value 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name SnapAssist -Value 0
