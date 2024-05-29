function PlayerDealDamage(list, pushSpd, hurtTime){
	
	var length = ds_list_size(list) //Obtiene el tamaño de la lista
	
	//La recorre infligiendo el daño a cada uno de los objetivos
	for(var i = 0; i < length; i++){
		list[| i].damagedBy = global.items[equipment[BASIC_ATTACK]]
		
		var pushDir;
		
		if list[| i].x > x {
			pushDir = 1;
		} else {
			pushDir = -1;
		}
		
		with list[| i] {
			if !invincible {
				event_user(0);
				self.pushSpd = pushSpd;
				pushXTo = pushDir;
				self.hurtTime = hurtTime;
			}
		}
	}
	
	ds_list_destroy(list) //Destruye la lista
}