# PowerShell GUI Framework

A framework for building GUI-based admin tools in PowerShell using XAML

The basic framework is already built, providing a multi-tabbed user interface on top for different functions, and an example layout
with a few fields and buttons that already work. It has an output panel on the bottom to provide feedback and results to the user,
and includes a button to clear the output if needed.

Two functions are provided to simplify giving feedback and results to the user:

- Write-FormHost: Adds the specified text to the output window; accepts input from the pipeline
- Show-Message: Creates a simple message window form with the specified title and message

Additionally, launching with the -Debug switch will leave the console window open and add a Debug button to the interface. When
clicked, it returns control of the launching console back to it and enters the debugger, allowing you to examine the current state
of the program. Return control back to the program window by sending the character `c` to the prompt (note: do not use `q` to quit as
this can abandon the program in a locked state).

Currently, the HideConsole does not work on the new tabbed Windows Terminal that's available in the Microsoft Store and which is the
default console in Windows 11. I do not know when or if I'll be able to make that work in the new terminal, but I hope to add that
support back at some point.

Launch the program by running launcher.ps1.
