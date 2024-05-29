function ControlControllerButtons(){
	
	if input_profile_get() == "gamepad" {
		
		var gp = string_lower(input_player_get_gamepad_type());
		
		if string_pos("xbox", gp){
			interactBtn = sXboxY;
			acceptBtn = sXboxA;
			mando = "xbox";
		}
	
	} else {
		interactBtn = sKBEnter;
		acceptBtn = sKBSpace;
		mando = "teclado";
	}
}