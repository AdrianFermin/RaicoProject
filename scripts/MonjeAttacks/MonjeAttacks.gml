function MonjeAttacks() {
	
	if !instance_exists(oPlayer) {
		state = BASE_STATE;
		exit;
	}
	
	if oPlayer.salud <= 0 || !instance_exists(oPlayer) {
		state = BASE_STATE;
		attacking = false; 
	}
	
	var result = CheckElements(ELEMENT_EARTH, oPlayer.element)
	
	if result == STRONG_ELEMENT {
		
		basicAttack1[ITEM_DEF_ELEMENT] = ELEMENT_NORMAL;
		basicAttack1[ITEM_DEF_DAMAGE] = 2;
		
		if attackSpr == noone {
			
			if attackStage == 0 {
				attackSpr = sAttack1_1;
			} else if attackStage == 1 {
				attackSpr = sAttack1_2;
			} else if attackStage == 2 {
				attackSpr = sAttack1_3;
			}
			
			image_index = 0;
			attacking = true;
		}
		
		if attackSpr == sAttack1_1 {
			
			if image_index == 2 {
				
				var player = collision_rectangle(x + 48 * image_xscale, y - 48, x, y - 40,
				oPlayer, false, true);
				
				if player != noone {
					
					player.damagedBy = basicAttack1;
					
					with player {
						event_user(0)
						image_index = 0;
						hurtTime = 6;
						invincible = 12;
					}
				}
			}
			
		} else if attackSpr == sAttack1_2 {
			
			if image_index == 1 {
				
				var player = collision_rectangle(x + 48 * image_xscale, y - 48, x, y - 40,
				oPlayer, false, true);
				
				if player != noone {
					
					player.damagedBy = basicAttack1;
					
					with player {
						event_user(0)
						image_index = 0;
						hurtTime = 6;
						invincible = 12;
					}
				}
			}
			
		} else if attackSpr == sAttack1_3 {
			
			if image_index == 0 {
				
				var player = collision_rectangle(x + 48 * image_xscale, y - 48, x, y - 40,
				oPlayer, false, true);
				
				
				if player != noone {
					
					var pushDir;
				
					if player.x > x {
						pushDir = 1;
					} else {
						pushDir = -1;
					}
					
					player.damagedBy = basicAttack1;
					
					with player {
						event_user(0)
						image_index = 0;
						hurtTime = 12;
						invincible = 24;
						pushSpd = 3;
						pushXTo = pushDir;
						lastAttack = 0;
					}
				}
			}
			
		}
	} else if result != STRONG_ELEMENT {
		
		if attackSpr == noone {
			
			if attackStage == 0 {
				attackSpr = sAttack2_1;
			} else if attackStage == 1 {
				attackSpr = sAttack2_2;
			} else if attackStage == 2 {
				attackSpr = sAttack2_3;
			} else if attackStage == 3 {
				attackSpr = sAttack2_4;
			} else if attackStage == 4 {
				attackSpr = sAttack2_5;
			}
			
			image_index = 0;
			attacking = true;
		}
		
		if attackSpr == sAttack2_1 {
			
			if image_index == 2 {
				
				var player = collision_rectangle(x + 48 * image_xscale, y - 48, x, y - 40,
				oPlayer, false, true);
				
				if player != noone {
					
					player.damagedBy = basicAttack1;
					
					with player {
						event_user(0)
						image_index = 0;
						hurtTime = 6;
						invincible = 12;
					}
				}
			}
			
		} else if attackSpr == sAttack2_2 {
			
			if image_index == 1 {
				
				var player = collision_rectangle(x + 48 * image_xscale, y - 48, x, y - 40,
				oPlayer, false, true);
				
				if player != noone {
					
					player.damagedBy = basicAttack1;
					
					with player {
						event_user(0)
						image_index = 0;
						hurtTime = 6;
						invincible = 12;
					}
				}
			}
			
		} else if attackSpr == sAttack2_3 {
			
			if image_index == 0 {
				
				
				var player = collision_rectangle(x + 48 * image_xscale, y - 48, x, y - 40,
				oPlayer, false, true);
				
				
				if player != noone {
					
					var pushDir;
				
					if player.x > x {
						pushDir = 1;
					} else {
						pushDir = -1;
					}
					
					player.damagedBy = basicAttack1;
					
					with player {
						event_user(0)
						image_index = 0;
						hurtTime = 12;
						invincible = 24;
						pushSpd = 5;
						pushXTo = pushDir;
					}
				}
			}
			
		} else if attackSpr == sAttack2_4 {
			
			if image_index >= 5 && image_index <= 6 {
				
				basicAttack1[ITEM_DEF_ELEMENT] = ELEMENT_EARTH;
				basicAttack1[ITEM_DEF_DAMAGE] = 3;
				
				var player = collision_rectangle(x + 90 * image_xscale, y - 50, 
				x + 140 * image_xscale, y, oPlayer, false, true);
				
				if player != noone {
					
					var pushDir;
				
					if player.x > x {
						pushDir = 1;
					} else {
						pushDir = -1;
					}
					
					player.damagedBy = basicAttack1;
					
					with player {
						event_user(0)
						image_index = 0;
						hurtTime = 12;
						invincible = 24;
						pushSpd = 2;
						pushXTo = pushDir;
						pushYTo = -1;
					}
				}
			} else if image_index == 7 {
				basicAttack1[ITEM_DEF_DAMAGE] = 2;
			}
			
		}
	}
}