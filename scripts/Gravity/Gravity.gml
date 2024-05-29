function Gravity(){
	
	if object_get_name(object_index) == "oPlayer" {
		//Verifica si el coyote time esta activo y va restando a su timer
		if coyoteJumpTimer > 0 { coyoteJumpTimer = max(coyoteJumpTimer - 1, 0)}
	}
	
	//Aplica la gravedad
	yspd += grav;
	
	//Verifica no pasar la velocidad maxima de caida
	if yspd > termVel { yspd = termVel }
	
	CheckFallCollision()
	
	if yspd < 0 {
		
		if place_meeting(x, y + yspd, oWall) {
			
			var _subPixel = .5;
			var _pixelCheck = _subPixel * sign(yspd);
			
			while !place_meeting(x, y + _pixelCheck, oWall){
				y += _pixelCheck;	
			}
			
			yspd = 0;
			
		}
		
	}
	
	y += yspd; //Mueve al jugador en el eje Y
	
	//Reiniciar la plataforma olvidada
	if instance_exists(forgetSemiSolid) && !place_meeting(x, y, forgetSemiSolid) {
		forgetSemiSolid = noone;
	}
	
	//X - Moving Platforms collisions
	moveplatXspd = 0;
	if instance_exists(myFloorPlat) { moveplatXspd = myFloorPlat.xspd }
	
	if place_meeting(x + moveplatXspd, y, oWall) {
		
		var _subPixel = .5;
		var _pixelCheck = _subPixel * sign(moveplatXspd);
		while !place_meeting(x + _pixelCheck, y, oWall) { x += _pixelCheck }
		
		moveplatXspd = 0;
	}
	
	x += moveplatXspd;
	
	//Y - Moving Platforms collisions
	if instance_exists(myFloorPlat) 
	&& (myFloorPlat.yspd != 0 || myFloorPlat.object_index == oSemiSolidWallMove
	|| object_is_ancestor(myFloorPlat.object_index, oSemiSolidWallMove)) {
		
		if !place_meeting(x, myFloorPlat.bbox_top, oWall)
		&& myFloorPlat.bbox_top >= bbox_bottom-movePlatMaxYspd {
			y = myFloorPlat.bbox_top;
		}
		
		if myFloorPlat.yspd < 0 && place_meeting(x, y + myFloorPlat.yspd, oWall) {
			
			if myFloorPlat.object_index == oSemiSolidWall || object_is_ancestor(myFloorPlat.object_index, oSemiSolidWall) {
			
				var _subPixel = .25;
				while place_meeting(x, y + myFloorPlat.yspd, oWall) { y += _subPixel }
				while place_meeting(x, y, oWall) { y -= _subPixel }
				y = round(y)
				
			}
			
			myFloorPlat = noone;
		}
	}
}