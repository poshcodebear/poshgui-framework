function MainProg
{
    ### Load Main Form ###
    loadDialog

    ###################
    ### Wire Events ###
    ###################

    # Note: event actions are defined in buttons
    
    ###################
    ### Sample Page ###

    $buttonSPBrowse.add_Click( $buttonSPBrowseExp )
    $buttonSPLoad.add_Click( $buttonSPLoadExp )
    $boxSPFileName.add_KeyDown( $boxSPFileNameKeyDownExp )

    ###             ###
    ###################

    #################
    ### Help Page ###

    $buttonHelpDocument.add_Click( $buttonHelpDocumentExp )
    $buttonHelpLicense.add_Click( $buttonHelpLicenseExp )
    $buttonHelpAbout.add_Click( $buttonHelpAboutExp )

    ###           ###
    #################

    # Clear Output Button:
    $buttonClearOutput.add_Click({ $textOutput.Text = '' })

    # Exit Button:
    $buttonExit.add_Click({ $xamGUI.Close() })
    
    # Debug Button:
    $buttonDebug.add_Click(
    {
        Write-FormHost "Entering Debug Mode"
        Set-PSBreakpoint -Variable bugbreak -Mode Write
        $bugbreak = 1
        Get-PSBreakpoint -Variable bugbreak | Remove-PSBreakpoint -Confirm:$false
        $bugbreak = $null
        Write-FormHost "Exiting Debug Mode"
    })
    
    if ($debug)
    {
        # Set all visible
        $buttonDebug.Visibility = 'Visible'
    }

    ### Launch the form ###
    $xamGUI.ShowDialog() | Out-Null
}