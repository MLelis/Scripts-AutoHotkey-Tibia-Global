#ifwinActive, Tibia - XXXXX
F12::
CoordMode, Pixel, Screen ; Primeiro configuramos as coordenadas XY para serem relativas à tela inteira (e não somente à janela ativa).

Loop,
{
Start2:
ImageSearch, PosX, PosY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%/imagens/mapa/wp2.png ;
if ErrorLevel = 0
{
	X_Um_Pouco_Mais_A_Esquerda := PosX +5
	Y_Um_Pouco_Mais_Abaixo := PosY +5
	MouseMove, %X_Um_Pouco_Mais_A_Esquerda%, %Y_Um_Pouco_Mais_Abaixo% 
	Click, left  
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