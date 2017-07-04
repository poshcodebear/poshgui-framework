#Requires -Version 3
param([switch]$debug)

Add-Type -AssemblyName PresentationCore, PresentationFramework, WindowsBase

$sPath = $PSScriptRoot

. "$($sPath)\Mod-Loader.ps1"

if ($debug)
{
    Write-Host "DEBUG WINDOW" -ForegroundColor Cyan
    Write-Host "Do not close this window; report any errors that appear during testing" -ForegroundColor Cyan
}
else { Hide-Console }

# Load and run program:
MainProg

Show-Console