#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir% 

Control::
Input, UserInput, L1 T3
if (ErrorLevel = "Max")
    {
    Send, ^%UserInput%
    }
return 

Shift::
Input, UserInput, L1 T3
if (ErrorLevel = "Max")
    {
    Send, +%UserInput%
    }
return 

Alt::
Input, UserInput, L1 T3
if (ErrorLevel = "Max")
    {
    Send, !%UserInput%
    }
return 
