#ifwinActive, Tibia - XXXXX
#MaxThreadsPerHotkey 2
Delete::
        Toggle := !Toggle
    Loop {
        If not Toggle
                    break
        ControlSend, ahk_parent, +{F3}
        Sleep, 1200
    }
return