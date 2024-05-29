function PlayerChangeWeapon(){
	
	if equipment[WEAPON] == DOUBLE_SWORDS { 
		
		idleSpr = sPlayerDSIdle;
		runSpr = sPlayerDSRunning;
		
	}
	if equipment[WEAPON] == KATANA { 
		
		idleSpr = sPlayerKIdle;
		runSpr = sPlayerKRunning;
		basicAttackSpr = sPlayerKAttack;
		
	}
	if equipment[WEAPON] == SWORD { 
		
		idleSpr = sPlayerSIdle;
		runSpr = sPlayerSRunning;
		basicAttackSpr = sPlayerSAttack;
		
	}
	
}