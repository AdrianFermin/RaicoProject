function ReceiveDamage(){
	
	var damageToDeal = damagedBy[ITEM_DEF_DAMAGE];
	var damageElement = damagedBy[ITEM_DEF_ELEMENT];
	
	if element == ELEMENT_NORMAL && damageElement == ELEMENT_NORMAL {
		damageToDeal -= defense;
	} else if element == damageElement {
		damageToDeal = round((damageToDeal / 2) - defense);
	} else {
		
		var result = CheckElements(damageElement, element)
		
		if result == WEAK_ELEMENT { damageToDeal = round((damageToDeal * 2) - defense); }
		
		if result == STRONG_ELEMENT { damageToDeal = round((damageToDeal / 3) - defense); }
		
		if result == NEUTRAL_ELEMENT { damageToDeal -= defense }
		
	}
	
	if damageToDeal <= 2 {
		damageToDeal = 2;
	}
	
	salud -= damageToDeal;
}