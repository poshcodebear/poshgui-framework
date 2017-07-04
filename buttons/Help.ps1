# Help Document
$buttonHelpDocumentExp =
{
    $HelpDoc = "$($sPath)\resources\Document.docx"
    if (Test-Path -Path $HelpDoc)
        { Invoke-Item -Path $HelpDoc }
    else
        { Show-Message -Title 'Help document not found' -Message "Help document '$($HelpDoc)' does not exist" }
}

# Changelog
$buttonHelpLicenseExp =
{
    $changelog = Get-Content -Path "$($sPath)\LICENSE" | Out-String
    Show-Message -Title "MIT License" -Message $changelog
}

# About
$buttonHelpAboutExp =
{
    $about = Get-Content -Path "$($sPath)\resources\about.txt" | Out-String
    Show-Message -Title 'About' -Message $about
}