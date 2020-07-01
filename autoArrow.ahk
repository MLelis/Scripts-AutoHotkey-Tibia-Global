#ifwinActive, Tibia - XXXX
F12::
CoordMode, Pixel, Screen ; Primeiro configuramos as coordenadas XY para serem relativas à tela inteira (e não somente à janela ativa).

Loop,
{
Start2:
ImageSearch, PosX, PosY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%/imagens/slotArrow.png ;
if ErrorLevel = 0
{
ControlSend, ahk_parent, +{F4}
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