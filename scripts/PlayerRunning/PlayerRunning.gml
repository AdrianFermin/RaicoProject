function PlayerRunning(){
	
	if hanging { exit; }
	
	//Reduccion de bloqueo de movimiento
	moveLock = max(moveLock - 1, 0)
	
	//Verifica si el movimiento no se encuentra bloqueado
	if moveLock <= 0 {
		
		//Verifica si aun esta dasheando y lo desactiva
		if dashing { dashing = false }
		//Verifica la direccion en la cual nos movemos
		moveDir = input_check("right") - input_check("left");

		xspd = moveDir * moveSpd; //Calcula la velocidad de movimiento
		
		//Cambiar cara
		if moveDir != 0 { face = moveDir }
		
	}

	CheckCollisions()
}