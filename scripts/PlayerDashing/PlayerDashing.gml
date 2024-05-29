function PlayerDashing(){
	
	//Evitar dashear mientras atacas
	if attacking { exit; }
	
	//Evitar dashear mientras escalas
	if hanging { exit; }
	
	//Verifica el bloqueo de dash
	if dashLock <= 0 {
		
		//Verifica pulsacion del boton
		if input_check_pressed("dash") && xspd != 0 {
			
			//Verifica si no ha usado todos sus dash en el aire
			if !onGround && airDashCount >= airDashMax { exit; }
			canDash = true; //Permite realizar el dash
		}
	}
	
	//Verifica si puede realizar el dash
	if canDash {
		audio_play_sound(dashSnd, 0, false, 1, 0, random_range(0.8, 1.2))
		xspd = moveDir * dashSpd; //Calcula la velocidad horizontal
		canDash = false; //Hace que no se pueda dashear
		moveLock = 10; //Bloquea el movimiento
		dashLock = 20; //Bloquea el dash
		dashing = true; //Confirma que esta usando el dash
		
		alarm[0] = 10; //Activa la alarma que reinicia los valores
		grav = 0; //Elimina la gravedad
		invincible = 10;
		
		//Elimina todo movimiento vertical {}
		vspeed = 0;
		yspd = 0;
		
		if !onGround { airDashCount++; }
		
		//Verificacion de Colisiones
		var _subPixel = .5; //Variable que define la distancia entre pixeles
	
		//Verifica si el lugar al que nos estamos moviendo esta ocupado por una pared
		if place_meeting(x + xspd, y, oWall){
		
			//Verifica si hay una rampa
		if !place_meeting(x + xspd, y - abs(xspd)-1, oWall){
			
			while place_meeting(x + xspd, y, oWall) { y-= _subPixel }
			
		} else {
				//Rampa en el techo
				if !place_meeting(x + xspd, y + abs(xspd*2)+1, oWall){
				
					while place_meeting(x + xspd, y, oWall) { y += 1; }
				
				} else {
					//Corrige errores de colision por pixeles menores a la velocidad de movimiento
					var _pixelCheck = _subPixel * sign(xspd)
					while !place_meeting(x + _pixelCheck, y, oWall){
						x += _pixelCheck;
				}
		
				xspd = 0; //Frena al jugador si colisiona con una pared
			}
		}
	
		x += xspd; //Realiza el dash
		
	}
	
	}
}