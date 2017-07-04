function Show-Message
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$Title,
        
        [Parameter(Mandatory = $true)]
        [string]$Message
    )
    [System.Windows.MessageBox]::Show($Message, $Title)
}