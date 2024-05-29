function MonjeRoll(){
	
	var player = collision_circle(x, y - 32, 40, oPlayer, true, true);
	
	if player == noone { exit; }
	
	if player.attacking && !attacking && rollTimer == 0 && state != ROLL_STATE {
		
		state = ROLL_STATE;
		invincible = true;
		
	} else if state == ROLL_STATE {
		
		if sprite_index != rollSpr {
			image_index = 0;
			sprite_index = rollSpr;
		}
		
		xspd = rollSpd * image_xscale;
		
		CheckCollisions()
	}
}