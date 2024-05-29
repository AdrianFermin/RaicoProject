function PlayerHanging(){
	
	if dashing { exit; }
	
	var inst = instance_place(x, y, oClimb);
	if onGround && myFloorPlat != noone {
		
		if myFloorPlat.object_index == oSemiSolidWall {
			inst = inst == noone ? instance_place(x, y + 32, oClimb) : inst;
		}
	}
	
	if inst != noone {
		
		//Salida inferior
		if bbox_top + 16 >= inst.bbox_bottom {
			hanging = false;
			image_speed = 1;
			grav = .275;
			exit;
		} else if hanging && bbox_top + 32 < inst.bbox_top && myFloorPlat == noone {
			//Salida superior
			y -= 16
			hanging = false;
			image_speed = 1;
			grav = .275;
			//show_message("H")
			exit;
		}
		
	} else {
		hanging = false;
		image_speed = 1;
		grav = .275;
		exit;
	}
	
	
	if !hanging && bbox_top <= inst.bbox_bottom && input_check(["up", "down"]) && !onGround {
		
		airDashCount = 0;
		wallJumpCount = 0;
		wallJumped = 0;
		xspd = 0;
		
		hanging = true;
		vspeed = 0;
		grav = 0;
		yspd = 0;
		
	} else if onGround && input_check("down") {
		
		y += 24;
		myFloorPlat = noone;
		
		airDashCount = 0;
		wallJumpCount = 0;
		wallJumped = 0;
		xspd = 0;
		
		hanging = true;
		vspeed = 0;
		grav = 0;
		yspd = 0;
	}
	
	if !hanging { exit; }
	
	
	if hanging {
		if input_check("up") {
			
			yspd = -climbSpd;
			climbingSpr = sPlayerClimbingUp;
			image_speed = 1;
			
		} else if input_check("down") {
			yspd = climbSpd;
			climbingSpr = sPlayerClimbingDown;
			image_speed = 1;
		} else {
			image_speed = 0;
			yspd = 0;
		}
		
		if input_check("right") {
			
			if bbox_left < inst.bbox_right - 8 {
				xspd = climbSpd * 1.25;
				image_speed = 1;
			} else {
				xspd = 0;
				hanging = false;
				image_speed = 1;
				grav = .275;
			}
			
			
		} else if input_check("left") {
			
			if bbox_right > inst.bbox_left + 8 {
				xspd = -climbSpd * 1.25;
				image_speed = 1;
			} else {
				xspd = 0;
				hanging = false;
				image_speed = 1;
				grav = .275;
			}
			
			
		} else {
			xspd = 0;
		}
	}
	
	y += yspd;
	x += xspd;
	
}