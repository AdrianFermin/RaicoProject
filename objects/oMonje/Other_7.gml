if state == ATTACKING_STATE {
	if sprite_index == sAttack1_1 {
		attackSpr = noone;
		attackStage = 1;
	} else if sprite_index == sAttack1_2 {
		attackSpr = noone;
		attackStage = 2;
	} else if sprite_index == sAttack1_3 {
		
		if !collision_circle(x, y - 32, 40, oPlayer, true, true) {
			attackSpr = noone;
			attackStage = 0;
			state = PURSUING_STATE;
			attacking = false;
			lastAttack = 0;
			attackCooldown = 20;
		} else {
			attackSpr = noone;
			attackStage = 0;
			lastAttack = 0;
			attackCooldown = 20;
		}
		
	} else if sprite_index == sAttack2_1 {
		attackSpr = noone;
		attackStage = 1;
	} else if sprite_index == sAttack2_2 {
		attackSpr = noone;
		attackStage = 2;
	} else if sprite_index == sAttack2_3 {
		attackSpr = noone;
		attackStage = 3;
	} else if sprite_index == sAttack2_4 {
		attackSpr = noone;
		attackStage = 4;
	} else if sprite_index == sAttack2_5 {
		
		if !collision_circle(x, y - 32, 40, oPlayer, true, true) {
			attackSpr = noone;
			attackStage = 0;
			state = PURSUING_STATE;
			attacking = false;
			lastAttack = 1;
			attackCooldown = 20;
		} else {
			
			if oPlayer.x > x {
				image_xscale = 1
			} else {
				image_xscale = -1
			}
			
			attackSpr = noone;
			attackStage = 0;
			lastAttack = 1;
			attackCooldown = 20;
		}
		
	}
	
	if !collision_circle(x, y - 32, 40, oPlayer, true, true)
	&& sprite_index != sAttack2_3 && sprite_index != sAttack2_4 {
		attackSpr = noone;
		attackStage = 0;
		state = PURSUING_STATE;
		attacking = false;
		attackCooldown = 20;
	}
} 
else if state == ROLL_STATE {
	state = ATTACKING_STATE;
	rollTimer = 120;
	attackCooldown = 0;
	image_xscale = -image_xscale;
	invincible = false;
}