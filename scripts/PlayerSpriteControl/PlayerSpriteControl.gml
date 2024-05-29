function PlayerSpriteControl(){
	
	
	if salud > 0 {
		
		//Running
		if abs(xspd) > 0 { 
			sprite_index = runSpr;
			maskSpr = runSpr;
		}
	
		//Idle
		if xspd == 0 {
			sprite_index = idleSpr;
			maskSpr = idleSpr;
		}
	
		//In the air
		if !onGround {
			sprite_index = jumpSpr;
			maskSpr = idleSpr;
		}
	
		//Dash on ground
		if dashing {
			sprite_index = dashSpr;
		}
	
		if hanging {
			sprite_index = climbingSpr;
		}
	
		//Basic Attack
		if attacking{
			sprite_index = basicAttackSpr; 
		}
		
		if state == HURT_STATE {
			sprite_index = hurtSpr;
		}
	}
	
	//Dying
	if salud <= 0 {
		if sprite_index != dyingSpr {
			image_index = 0;
		}
		sprite_index = dyingSpr
	}
	
	mask_index = maskSpr;

}