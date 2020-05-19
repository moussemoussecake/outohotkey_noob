F2::
	ExitApp
return

F1::
	check_1 = 46
	check_2 = 30

	a=65
	arr:=Array(Array())
	arr:=[[46,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,34,39,44,63,45,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122],[46,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,34,39,44,63,45]]
	check_part=2 ;0일때는 대문자로 시작, 2일때는.부터 시작
	loop	
	{
		i=1
		loop, 68
		{
			;send % i
			;Send, % arr[check_part][i++]
			Send, % chr(arr[check_part][i++])
			;Send {Enter}
		
			Sleep ,10
			pixelsearch,x,y,510,254,1264,633,0xE3337A,,Fast RGB
			if(ErrorLevel){
				check_1 := check_2
				check_2 := arr[check_part][i++]
				break
			}
			else
			{
				;sleep, 500
				Send {BS}
			}
		}
		pixelsearch,x,y,510,254,1264,633,0xE3337A,,Fast RGB
		if(ErrorLevel){
			;break
		}
		else
		{
			;sleep, 500
			Send {BS}
		}
		Send, {space}
		if (check_1 = check_2)
		{
			if(check_1 = 97)
			{
				;MsgBox, %check_1% %check_2%
				Send {Enter}
				check_1 = 30
				sleep, 1000
			}
			
		}
	}
return
 		