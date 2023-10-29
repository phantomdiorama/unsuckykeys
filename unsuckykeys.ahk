#Requires AutoHotkey v2.0
#SingleInstance Force
if FileExist("icon.ico")
    TraySetIcon  "icon.ico"

alt::
control::
shift::
{
    ih := InputHook("L1 T2")
    ih.Start()
    ih.Wait()
    if (ih.EndReason = "Max")
        if (A_ThisHotkey = "control"){
            key := ih.Input
            sht := "^" . key
            send sht
        }
        else if (A_ThisHotkey = "alt"){
            key := ih.Input
            sht := "!" . key
            send sht
        }
        else {
            key := ih.Input
            sht := "+" . key
            send sht
        }
    if (ih.EndReason = "Timeout")
        return
}
