function EnemiesRun(){
	
	if instanceTo == noone { exit; }
	
	if !instance_exists(instanceTo){ 
		state = BASE_STATE;
		looking = 60;
		instanceTo = noone;
		exit;
	}
	
	//Reduccion de bloqueo de movimiento
	moveLock = max(moveLock - 1, 0);
	
	if moveLock <= 0 {
		
		var colision = collision_circle(x, instanceTo.y, 32, instanceTo, false, true);
			
		if colision == noone {
			
			if x < instanceTo.x {
				
				xspd = moveSpd * (1)
				image_xscale = 1;
			
			} else if x > instanceTo.x {
				
				xspd = moveSpd * (-1)
				image_xscale = -1;
				
			}
			
		} else {
			if instanceTo.object_index != oPlayer {
				xspd = 0;
				instanceTo = noone;
				state = BASE_STATE;
				looking = 60;	
			}
		}
		
		if xspd != 0 {
			//Verificacion de Colisiones

			var _subPixel = .5; //Variable que define la distancia entre pixeles
	
			//Verifica si el lugar al que nos estamos moviendo esta ocupado por una pared
			if place_meeting(x + xspd, y, oWall){
		
				//Verifica si hay una rampa
				if !place_meeting(x + xspd, y - abs(xspd)-1, oWall){
			
					while place_meeting(x + xspd, y, oWall) { y -= _subPixel }
			
				} else {
			
					//Rampa en el techo
					if !place_meeting(x + xspd, y + abs(xspd*2)+1, oWall){
				
						while place_meeting(x + xspd, y, oWall) { y += 2; }
				
					} else {
				
						//Corrige errores de colision por pixeles menores a la velocidad de movimiento
						var _pixelCheck = _subPixel * sign(xspd)
						while !place_meeting(x + _pixelCheck, y, oWall){
							x += _pixelCheck;	
						}
						
						xspd = -xspd; //Frena al jugador si colisiona con una pared
						image_xscale = -image_xscale;
						
						if instanceTo.object_index != oPlayer {
							instanceTo = noone;
							state = BASE_STATE;
							looking = 60;
						}
						
					}
					
					if state == RUNNING_STATE {
						instanceTo = noone;
						state = BASE_STATE;
						looking = 60;
					}
		
				}	
		
			}
	
			//Bajar rampas
			if yspd >= 0 && !place_meeting(x + xspd, y + 1, oWall) && place_meeting(x + xspd, y + abs(xspd)+1, oWall) {
		 
				 while !place_meeting(x + xspd, y + _subPixel, oWall) { y += _subPixel }
		 
			 }
			 
		} else {
			
			if state == RUNNING_STATE {
				instanceTo = noone;
				state = BASE_STATE;
				looking = 60;
			}
		}
	}
	
	x += xspd; //Mueve al enemigo en el eje X

}