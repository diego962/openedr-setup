
$User = $env:Username
$PathEDRMsi = "C:\Users\$User\Downloads\OpenEDR-installation-2.0.0.0-x64.msi"


function DisableVirusAndRealProtection {
    Set-MpPreference -DisableRealtimeMonitoring $true
}

function ChangeExecutionPolicy {
    Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
}

function InstallAtomicReadteam {
    IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing); Install-AtomicRedTeam -getAtomics
}

function InstallOpenEDR {
    IWR -Uri 'https://github.com/ComodoSecurity/openedr/releases/download/2.0.0.0/OpenEDR-installation-2.0.0.0-x64.msi' -OutFile "$PathEDR"

    Start-Process $PathEDRMsi
}


DisableVirusAndRealProtection
ChangeExecutionPolicy
InstallAtomicReadteam
InstallOpenEDR