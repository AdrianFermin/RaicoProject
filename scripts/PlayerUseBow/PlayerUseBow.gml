function PlayerUseBow(){
	
	if hanging { exit; }
	
	//Verifica que tiene flechas
	if GetItem(equipment[ARROW])[INVENTORY_STATE] == false {
		
		//Muestra mensaje de no tienes flechas
		show_message("No te quedan flechas, consigue algunas")
		exit;
	}
	
	bowLock = 30; //Cooldown del arco
	dashLock = 5;
	
	if !onGround {
		moveLock = 5;
	
		alarm[0] = 10; //Activa la alarma que reinicia los valores
		grav = 0; //Elimina la gravedad
		
		//Elimina todo movimiento vertical y horizontal {}
		vspeed = 0;
		yspd = 0;
		xspd = 0;
		hspeed = 0;
	}
	
	instance_create_layer(x, y, "Proyectiles", oArrow) //Crea la flecha

}