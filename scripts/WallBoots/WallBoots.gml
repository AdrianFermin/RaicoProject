function WallBoots(){
	//Verifica si hay un salto en buffer, si no esta en el suelo y si se esta moviendo
	if !onGround && moveDir != 0 && !dashing {
		
		//Verifica si tiene una pared delante
		if place_meeting(x+1, y, oWall) || place_meeting(x-1, y, oWall) {
			
			//Verifica si la pared en la que quiere saltar es diferente a la anterior
			if wallJumped != instance_place(x+moveDir, y, oWall) || wallJumpCount < 1 {
				
				if wallJumped != instance_place(x+moveDir, y, oWall) {
					wallJumpCount = 0 //Reinicia el contador de salto en esa pared
				} else {
					wallJumpCount++; //Aumenta el contador de salto en esa pared
				}
				
				//Agregar sonido de salto
				audio_play_sound(jumpSnd, 0, false, 1, 0, random_range(0.8, 1.2))
				
				//Almacena la referencia a la pared saltada
				wallJumped = instance_place(x+moveDir, y, oWall);
				face = -face; //Cambia la cara que mira el sprite
				moveDir = -moveDir; //Cambia la direccion de movimiento
				xspd = moveDir * moveSpd + (1 * moveDir); //Calcula la velocidad horizontal
				yspd = jspd; //Aplica la velocidad del salto a la velocidad vertical
				x += xspd; //Aplica la velocidad horizontal al jugador
				jumpKeyBuffered = false; //Elimina el buffer de salto 
				jumpKeyBufferTimer = 0; //Reinicia el temporizador de buffer de salto
				moveLock = 20; //Aplica el bloqueo de movimiento
				airDashCount = 0; //Reinicia el contador de dashes en el aire
				
				
			}
		}
	}
	
	y += yspd; //Mueve al jugador en el eje Y
}