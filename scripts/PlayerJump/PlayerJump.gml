function PlayerJump(){
	
	//Evitar saltar mientras atacas
	if attacking { exit; }
	
	if place_meeting(x, y - abs(xspd*2)-1, oWall) {
		exit;
	}
	
	if onGround && (myFloorPlat.object_index == oSemiSolidWall
	|| object_is_ancestor(myFloorPlat.object_index, oSemiSolidWall)) {
		
		if input_check("down") { exit; }
	}
	
	//Reduccion de bloqueo de movimiento
	jumpLock = max(jumpLock - 1, 0)
	
	if jumpLock != 0 { exit; }
	
	#region Jump
	
	//Verifica si hay un salto en buffer y si se encuentra en el suelo
	if onGround || coyoteJumpTimer > 0 {
		jumpKeyBuffered = false; //Elimina el buffer de salto
		jumpKeyBufferTimer = 0; //Reinicia el temporizador de buffer de salto
		yspd = jspd; //Aplica la velocidad del salto a la velocidad vertical
		coyoteJumpTimer = 0;
		myFloorPlat = noone;
		
		//Agregar sonido de salto
		audio_play_sound(jumpSnd, 0, false, 1, 0, random_range(0.8, 1.2))
	}
	
	if hanging {
		
		if input_check("up") || input_check("down") { exit; }
		
		grav = .275;
		jumpKeyBuffered = false; //Elimina el buffer de salto
		jumpKeyBufferTimer = 0; //Reinicia el temporizador de buffer de salto
		yspd = jspd; //Aplica la velocidad del salto a la velocidad vertical
		coyoteJumpTimer = 0;
		hanging = false;
		myFloorPlat = noone;
		
		//Agregar sonido de salto
		audio_play_sound(jumpSnd, 0, false, 1, 0, random_range(0.8, 1.2))
	}
	
	#endregion
	
	y += yspd; //Mueve al jugador en el eje Y
}