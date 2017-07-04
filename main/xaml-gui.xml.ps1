<#
    This contains the GUI in XAML format.
    Making changes here will modify the GUI:
    create new tabs, modify the layout, etc.
#>

[xml]$Xaml = @"
<Window
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="PowerShell GUI Framework $($version)" Height="600" Width="640" MinHeight="350" MinWidth="640"
        Icon="$($sPath)\resources\$($icon).ico">
    <Grid>
        <Grid.RowDefinitions>
            <RowDefinition Height="200"/>
            <RowDefinition Height="45"/>
            <RowDefinition Height="1*"/>
        </Grid.RowDefinitions>
        
        <TabControl Name="tabControl">
            <TabItem Header="Sample Page" Name="tabSamplePage">
                <Grid>
                    <Grid.RowDefinitions>
                        <RowDefinition/>
                        <RowDefinition/>
                        <RowDefinition/>
                        <RowDefinition/>
                    </Grid.RowDefinitions>
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition/>
                        <ColumnDefinition/>
                        <ColumnDefinition/>
                        <ColumnDefinition/>
                    </Grid.ColumnDefinitions>
                    <Label Name="labelSPFileName" Content="File name:" HorizontalAlignment="Right" VerticalAlignment="Center"/>
                    <Label Name="labelSPMisc" Content="Misc:" HorizontalAlignment="Right" VerticalAlignment="Center" Grid.Row="1"/>
                    <Label Name="labelSPPath" Content="Share Path:" HorizontalAlignment="Right" VerticalAlignment="Center" Grid.Row="2"/>
                    <TextBox Name="boxSPFileName" Height="22" Margin="6" Grid.Column="1" Grid.ColumnSpan="2"/>
                    <TextBox Name="boxSPMisc" Height="22" Margin="6" Grid.Column="1" Grid.Row="1" Grid.ColumnSpan="2"/>
                    <TextBox Name="boxSPPath" Text="\\server\share\" Height="22" Margin="6" Grid.Column="1" Grid.Row="2" Grid.ColumnSpan="2"/>

                    <Button Name="buttonSPBrowse" Content="Browse" Margin="6" Grid.Column="3"/>
                    <Button Name="buttonSPLoad" Content="Load" Margin="6" Grid.Column="3" Grid.Row="1"/>
                </Grid>
            </TabItem>
            
            <TabItem Header="Help" Name="tabHelp">
                <Grid>
                    <Grid.RowDefinitions>
                        <RowDefinition Height="6*"/>
                        <RowDefinition Height="3*"/>
                        <RowDefinition Height="3*"/>
                        <RowDefinition Height="3*"/>
                    </Grid.RowDefinitions>
                    <Label Content="PowerShell GUI Framework - Version $($fullVersion)" HorizontalAlignment="Center"/>
                    <Label Content="Copyright 2017 Christopher R. Lowery (a.k.a, The PowerShell Bear)"  HorizontalAlignment="Center" VerticalAlignment="Center"/>
                    <Label Content="MIT License"  HorizontalAlignment="Center" VerticalAlignment="Bottom"/>
                    <Button Name="buttonHelpDocument" Content="Help Document" Width="150" Height="25" Grid.Row="1"/>
                    <Button Name="buttonHelpLicense" Content="MIT License" Width="150" Height="25" Grid.Row="2"/>
                    <Button Name="buttonHelpAbout" Content="About" Width="150" Height="25" Grid.Row="3"/>
                </Grid>
            </TabItem>
            
        </TabControl>
        <Grid Grid.Row="1">
            <Grid.ColumnDefinitions>
                <ColumnDefinition/>
                <ColumnDefinition Width="100"/>
                <ColumnDefinition Width="100"/>
                <ColumnDefinition/>
            </Grid.ColumnDefinitions>
            <Label Content="Output:" HorizontalAlignment="Left" VerticalAlignment="Bottom"/>
            <Button Name="buttonClearOutput" Content="Clear Output" Width="75" Height="32" Grid.Column="1"/>
            <Button Name="buttonExit" Content="Exit" Width="75" Height="32" Grid.Column="2"/>
            <Button Name="buttonDebug" Content="Debug" Width="75" Height="32" Grid.Column="3" Visibility="Hidden"/>
        </Grid>
        <TextBox Name="textOutput" Margin="10,0,10,10" TextWrapping="Wrap" VerticalScrollBarVisibility="Auto" IsReadOnly="True" FontFamily="Consolas" Grid.Row="2"/>
    </Grid>
</Window>
"@