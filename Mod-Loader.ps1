# Loads in the manifest of directories to process
$moduleGroups = Get-Content -Path "$($sPath)\manifest.txt"

foreach ($group in $moduleGroups)
{
    # Modules files list the scripts in the order they should be loaded
    $modules = Get-Content -Path "$($sPath)\$($group)\modules.txt"
    foreach ($module in $modules)
    {
        . "$($sPath)\$($group)\$($module)"
    }
}