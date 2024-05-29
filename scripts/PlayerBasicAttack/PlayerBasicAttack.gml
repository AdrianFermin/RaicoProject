function PlayerBasicAttack(){
	
	//Verifica si se esta moviendo, esta en el aire o tiene cooldown
	if !onGround || attackLock != 0 { exit; }
	
	if xspd != 0 { xspd = 0; }
	
	attacking = true; //Activa el ataque
	attacksList[BASIC_ATTACK_LIST] = ds_list_create(); //Crea la lista de objetivos
	attack = BASIC_ATTACK;
	
	//Setea el sprite a la primera imagen
	if image_index > 0 && sprite_index != basicAttackSpr { image_index = 0 }
	
	//Verifica el equipamento
	if equipment[WEAPON] == SWORD {
		//Obtiene los objetivos en la hitbox del ataque
		var _num = collision_rectangle_list(x+60*face,y,x+8*face,y-64, oEnemy, false, true, attacksList[BASIC_ATTACK_LIST], true)
		
		moveLock = 16; //Bloquea el movimiento
		attackLock = 23; //Activa el cooldown del ataque
	}
	
	if equipment[WEAPON] == KATANA {
		//Obtiene los objetivos en la hitbox del ataque y los guarda en la lista correspondiente
		var _num = collision_rectangle_list(x+70*face,y,x+8*face,y-48, oEnemy, false, true, attacksList[BASIC_ATTACK_LIST], true)
		
		moveLock = 18; //Bloquea el movimiento
		attackLock = 20; //Activa el cooldown del ataque
	}
	
}