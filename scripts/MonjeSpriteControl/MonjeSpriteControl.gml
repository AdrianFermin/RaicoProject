function MonjeSpriteControl(){
	
	//Running
	if abs(xspd) > 0 { 
		sprite_index = runSpr;
		maskSpr = runSpr;
	}
		
	//Idle
	if state == BASE_STATE || attackCooldown != 0 && state = ATTACKING_STATE {
		sprite_index = idleSpr;
		maskSpr = idleSpr;
	}
		
	//Attack
	if attacking {
		sprite_index = attackSpr;
		maskSpr = idleSpr;
	}
	
	if state == HURT_STATE {
		sprite_index = hurtSpr;
		maskSpr = idleSpr;
	}
	
	if state == ROLL_STATE {
		sprite_index = rollSpr;
		maskSpr = idleSpr;
	}
	
	
	if salud > 0 {}
		
		
	
	
	mask_index = maskSpr;
}