#ifwinActive, Tibia - XXXX
F12::
CoordMode, Pixel, Screen ; Primeiro configuramos as coordenadas XY para serem relativas à tela inteira (e não somente à janela ativa).

Loop,
{
Start2:
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, %A_ScriptDir%/imagens/healthbar80OT.png ;
if ErrorLevel = 1
{
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, %A_ScriptDir%/imagens/healthbar50OT.png ;
if ErrorLevel = 1
{
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, %A_ScriptDir%/imagens/healthbar30OT.png ;
if ErrorLevel = 1
{
ControlSend, ahk_parent, +{F1}
        Sleep, 1200
        Goto, Start2
}
ControlSend, ahk_parent, +{F1}
        Sleep, 1200
        Goto, Start2
}
ControlSend, ahk_parent, +{F1}
        Sleep, 1200
        Goto, Start2
}
else
{
	Sleep, 1200
    Goto, Start2
}

Return
}