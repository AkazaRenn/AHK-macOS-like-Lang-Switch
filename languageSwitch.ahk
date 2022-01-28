CapsLock::
    If (GetKeyState("CapsLock", "T")) {
        SetCapsLockState Off
    } else {
        KeyWait, CapsLock, U T0.2
        If (ErrorLevel) {
            SetCapsLockState On
            KeyWait, CapsLock, U
        } else {
            Send, ^#{Space}
        }
    }
Return