function Write-FormHost
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true)]
        [string[]]$Text
    )
    
    BEGIN { }
    
    PROCESS
    {
        foreach ($line in $Text)
        {
            # Render twice to account for interface lag
            $XamGUI.Dispatcher.Invoke( [action] {$textOutput.AddText("$($line)")}, "Render" )
            $XamGUI.Dispatcher.Invoke( [action] {$textOutput.AddText("`n")}, "Render" )
        }
        $textOutput.ScrollToEnd()
    }

    END { }
}