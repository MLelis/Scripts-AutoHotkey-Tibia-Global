#ifwinActive, Tibia - XXXXX
F12::
CoordMode, Pixel, Screen ; Primeiro configuramos as coordenadas XY para serem relativas à tela inteira (e não somente à janela ativa).

Loop,
{
Start2:
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, %A_ScriptDir%/imagens/manabar80.png ;
if ErrorLevel = 1
{
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, %A_ScriptDir%/imagens/manabar50.png ;
if ErrorLevel = 1
{
ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, %A_ScriptDir%/imagens/manabar30.png ;
if ErrorLevel = 1
{
ControlSend, ahk_parent, +{F4}
        Sleep, 1200
        Goto, Start2
}
ControlSend, ahk_parent, +{F4}
        Sleep, 1200
        Goto, Start2
}
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