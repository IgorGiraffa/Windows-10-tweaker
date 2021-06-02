; [Win+A] Toggle always on top
#a::  Winset, Alwaysontop, , A

; [Win+WheelUp] Increase opacity
#WheelUp::
    DetectHiddenWindows, on
    WinGet, curtrans, Transparent, A
    if ! curtrans
        curtrans = 255
    newtrans := curtrans + 8
    if newtrans > 0
    {
        WinSet, Transparent, %newtrans%, A
    }
    else
    {
        WinSet, Transparent, OFF, A
        WinSet, Transparent, 255, A
    }
return

; [Win+WheelDown] Decrease opacity
#WheelDown::
    DetectHiddenWindows, on
    WinGet, curtrans, Transparent, A
    if ! curtrans
        curtrans = 255
    newtrans := curtrans - 8
    if newtrans > 0
    {
        WinSet, Transparent, %newtrans%, A
    }
return

; [Win+O] Set opacity 50%
#o::
    WinSet, Transparent, 127, A
return

; [Ctrl+Win+O] Reset opacity
^#o::
    WinSet, Transparent, 255, A
    WinSet, Transparent, OFF, A
return
