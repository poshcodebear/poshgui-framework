Add-Type -Name Window -Namespace Console -MemberDefinition '
    [DllImport("Kernel32.dll")]
    public static extern IntPtr GetConsoleWindow();
    
    [DllImport("user32.dll")]
    public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'

function Show-Console
{
    $console = [Console.Window]::GetConsoleWindow()
    [Console.Window]::ShowWindow($console, 5) | Out-Null
}

function Hide-Console
{
    $console = [Console.Window]::GetConsoleWindow()
    [Console.Window]::ShowWindow($console, 0) | Out-Null
}