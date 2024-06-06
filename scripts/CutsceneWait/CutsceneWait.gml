function CutsceneWait(seconds){
	
	timer++;
	
	if timer >= seconds * room_speed {
		timer = 0;
		CutsceneEndAction();
	}
}