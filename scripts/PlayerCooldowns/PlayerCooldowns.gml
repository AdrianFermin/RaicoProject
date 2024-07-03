function PlayerCooldowns(){
	
	//Basic Attack cooldown
	if attackLock != 0 { attackLock = max(attackLock - 1, 0) }
	
	//Dash cooldown
	if dashLock != 0 { dashLock = max(dashLock - 1, 0) }
	
	//Bow cooldown
	if bowLock != 0 { bowLock = max(bowLock - 1, 0) }
	
	//Bomb cooldown
	if bombLock != 0 { bombLock = max(bombLock - 1, 0) }
	
	//Invincibility
	if invincible != 0 { invincible = max(invincible - 1, 0) }
	
	//TP Plant
	if plantLock != 0 { plantLock = max(plantLock - 1, 0) }
	
	//TP Use
	if tpLock != 0 { tpLock = max(tpLock - 1, 0) }
}