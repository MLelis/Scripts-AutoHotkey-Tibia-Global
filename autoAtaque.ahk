#ifwinActive, Tibia - XXXXX
F12::
CoordMode, Pixel, Screen ; Primeiro configuramos as coordenadas XY para serem relativas à tela inteira (e não somente à janela ativa).

Loop,
{
Start2:
ImageSearch, PosX, PosY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%/imagens/battleVazio.png ;
if ErrorLevel = 1
{
ImageSearch, PosX, PosY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%/imagens/mobs/rat.png ;
if ErrorLevel = 0
{
	X_Um_Pouco_Mais_A_Esquerda := PosX + 20 
	Y_Um_Pouco_Mais_Abaixo := PosY + 20
	MouseMove, %X_Um_Pouco_Mais_A_Esquerda%, %Y_Um_Pouco_Mais_Abaixo%
	Click, left 
	Goto, Start2
}
else
{
	ImageSearch, PosX, PosY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%/imagens/mobs/battleRat.png ;
	if ErrorLevel = 0
	{
		X_Um_Pouco_Mais_A_Esquerda := PosX + 20 
		Y_Um_Pouco_Mais_Abaixo := PosY + 20 
		MouseMove, %X_Um_Pouco_Mais_A_Esquerda%, %Y_Um_Pouco_Mais_Abaixo% 
		Click, left  
		Sleep, 1200
		Goto, Start2
	}
	else{
		Sleep, 1200
		Goto, Start2
	}
}
}
else
{
	Sleep, 1200
    Goto, Start2
}

Return
}