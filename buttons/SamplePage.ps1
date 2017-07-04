# Browse
$buttonSPBrowseExp =
{
    $dialog = [Microsoft.Win32.OpenFileDialog]::New()
    $dialog.DefaultExt = '.txt'
    $dialog.Filter = 'Text Files (*.txt)|*.txt'
    $result = $dialog.ShowDialog()
    if ($result)
        { $boxSPFileName.Text = $dialog.FileName }
    $boxSPFileName.Focus()
}

# Load
$buttonSPLoadExp =
{
    if ($boxSPFileName.Text -ne '')
    {
        $file = $boxSPFileName.Text
        $contents = Get-Content -Path $file
        
        foreach ($line in $contents)
        {
            if ($line -ne '')
                { Write-FormHost $line }
            else 
                { Write-FormHost "`n" }
        }
    }
}

# Enter Action:
$boxSPFileNameKeyDownExp =
{
    if ( $args[1].Key -eq 'Return' )
        { Invoke-Expression -Command "$($buttonSPLoadExp)" }
}