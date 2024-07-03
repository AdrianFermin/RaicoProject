function PlayerUseItems(){
	
	//Usar ataque basico
	if input_check_pressed("attack") {
		UseItem(equipment[BASIC_ATTACK])
	}
	
	//Usar salto
	if jumpKeyBuffered && (onGround || hanging) {
		UseItem(equipment[JUMP])
	}
	
	//Usar salto
	if jumpKeyBuffered && !onGround {
		UseItem(equipment[WALL_BOOTS])
	}
	
	//Usar dash
	if input_check_pressed("dash"){
		UseItem(equipment[DASH])
	}
	
	//Usar arco
	if input_check("bow") && directionBuffered != noone && bowLock <= 0 {
		if dashLock > 0 || dashing { exit; }
		UseItem(equipment[BOW])
	}

	//Usar bombas
	if input_check("bomb") && bombLock <= 0 {
		if dashLock > 0 || dashing { exit; }
		UseItem(equipment[BOMBS])
	}
	
	//Usar TP Orb
	if input_check_released("tpOrb") && plantLock == 0 {
		UseItem(ITEM_TP_ORB, ["TP"]);
	} else if onGround && xspd == 0 && input_check_long_pressed("tpOrb") {
		UseItem(ITEM_TP_ORB, ["PLANT"]);
	}
}