function ControlControllerButtons(){
	
	if input_profile_get() == "gamepad" {
		
		var gp = string_lower(input_player_get_gamepad_type());
		
		if string_pos("xbox", gp) {
			
			interactBtn = sXboxY;
			acceptBtn = sXboxA;
			cancelBtn = sXboxB;
			
			moveRightBtn = sXboxStickRight;
			moveLeftBtn = sXboxStickLeft;
			moveUpBtn = sXboxStickUp;
			moveDownBtn = sXboxStickDown;
			
			jumpBtn = sXboxA;
			
			mando = "xbox";
			
			
		} else if string_pos("switch", gp) {
			
			interactBtn = sSwitchX;
			acceptBtn = sSwitchA;
			cancelBtn = sSwitchB;
			
			moveRightBtn = sSwitchStickRight;
			moveLeftBtn = sSwitchStickLeft;
			moveUpBtn = sSwitchStickUp;
			moveDownBtn = sSwitchStickDown;
			
			jumpBtn = sSwitchB;
			
			mando = "switch";
			
		}
	
	} else {
		interactBtn = sKBEnter;
		acceptBtn = sKBSpace;
		cancelBtn = noone;
		
		moveRightBtn = sKBArrowRight;
		moveLeftBtn = sKBArrowLeft;
		moveUpBtn = sKBArrowUp;
		moveDownBtn = sKBArrowDown;
		
		jumpBtn = sKBSpace;
		
		mando = "teclado";
		
	}
}