//Acabar muerte
if sprite_index == dyingSpr { instance_destroy() }

if attacking {
	
	if attack == BASIC_ATTACK {
		
		if equipment[WEAPON] == KATANA {
			
			if basicAttackSpr == sPlayerKAttack1 {
				PlayerDealDamage(attacksList[BASIC_ATTACK_LIST], 3, 12);
				basicAttackSpr = sPlayerKAttack2;
			} else if basicAttackSpr == sPlayerKAttack2 {
				attacking = false;
				basicAttackSpr = sPlayerKAttack1;
			}
		}
		
	}
}
