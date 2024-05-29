function CheckElements(damageElement, receiverElement){
	
	var sistema = oSystem;
	var weakToCheck = noone;
	var strongToCheck = noone;
	
	//Asignar listas de fortalezas y debilidades
	if damageElement == ELEMENT_FIRE {
		weakToCheck = sistema.weakToFire;
		strongToCheck = sistema.strongToFire;
	} else if damageElement == ELEMENT_WATER {
		weakToCheck = sistema.weakToWater;
		strongToCheck = sistema.strongToWater;
	} else if damageElement == ELEMENT_EARTH {
		weakToCheck = sistema.weakToEarth;
		strongToCheck = sistema.strongToEarth;
	} else if damageElement == ELEMENT_NORMAL {
		weakToCheck = sistema.weakToNormal;
		strongToCheck = sistema.strongToNormal;
	} else if damageElement == ELEMENT_THUNDER {
		weakToCheck = sistema.weakToThunder;
		strongToCheck = sistema.strongToThunder;
	}
	
	//Verificar estas listas
	for (var i = 0; i < array_length(weakToCheck); i++) {
				
		if receiverElement == weakToCheck[i] {
			
			return WEAK_ELEMENT;
			
		}
	}

	for (var i = 0; i < array_length(strongToCheck); i++) {
				
		if receiverElement == strongToCheck[i] {
			
			return STRONG_ELEMENT;
			
		}
	}
	
	return NEUTRAL_ELEMENT;
}