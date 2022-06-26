
$User = $env:Username
$PathEDRMsi = "C:\Users\$User\Downloads\OpenEDR-installation-2.0.0.0-x64.msi"
$PathProfile = $env:windir\System32\WindowsPowerShell\v1.0\atomicredteam.ps1

function ChangeExecutionPolicy {
    Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
}

function InstallAtomicReadteam {
    IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing); Install-AtomicRedTeam -getAtomics
}

function CreateProfile {
    New-item -Path $PathProfile -ItemType file -Force

    Add-Content $PathProfile "Import-Module C:\AtomicRedTeam\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1"
}

function InstallOpenEDR {
    IWR -Uri 'https://github.com/ComodoSecurity/openedr/releases/download/2.0.0.0/OpenEDR-installation-2.0.0.0-x64.msi' -OutFile $PathEDR

    Start-Process $PathEDRMsi
}


ChangeExecutionPolicy
InstallAtomicReadteam
CreateProfile
InstallOpenEDR