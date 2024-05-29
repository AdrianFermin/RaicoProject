function EntityPushed(){
	
	if pushXTo != 0 {
		
		xspd = pushSpd * pushXTo;
		
	}
	
	if pushXTo != 0 {
		
		yspd = pushSpd * pushYTo;
		
	}
	
	//Verificacion de Colisiones

	var _subPixel = .5; //Variable que define la distancia entre pixeles
	
	//Verifica si el lugar al que nos estamos moviendo esta ocupado por una pared
	if place_meeting(x + xspd, y, oWall) {
		
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
				
				xspd = 0; //Frena al jugador si colisiona con una pared
			}
		
			
		}	
		
	}
	
	//Bajar rampas
	if yspd >= 0 && !place_meeting(x + xspd, y + 1, oWall) && place_meeting(x + xspd, y + abs(xspd)+1, oWall) {
		 
		while !place_meeting(x + xspd, y + _subPixel, oWall) { y += _subPixel }
		 
	}
	
	Gravity()
	
	if pushXTo != 0 { x += xspd; }
	if pushYTo != 0 { y += yspd; }
	
}