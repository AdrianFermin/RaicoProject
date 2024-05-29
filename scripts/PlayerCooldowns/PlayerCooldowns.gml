function PlayerCooldowns(){
	
	//Basic Attack cooldown
	if attackLock != 0 { attackLock = max(attackLock - 1, 0) }
	
	//Dash cooldown
	if dashLock != 0 { dashLock = max(dashLock - 1, 0) }
	
	//Bow cooldown
	if bowLock != 0 { bowLock = max(bowLock - 1, 0) }
	
	//Bomb cooldown
	if bombLock != 0 { bombLock = max(bombLock - 1, 0) }
	
	//Invincibiliti
	if invincible != 0 { invincible = max(invincible - 1, 0) }
}