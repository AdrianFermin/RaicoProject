function PlayerUseBombs(){
	
	if hanging || !onGround || xspd != 0 { exit; }
	
	//Verifica que tiene flechas
	if GetItem(equipment[BOMBS])[INVENTORY_STATE] == false {
		
		//Muestra mensaje de no tienes flechas
		show_message("No te quedan bombas, consigue algunas")
		exit;
	} else {
		dashLock = 5;
		bombLock = 30;
		
		if place_meeting(x + 16 * face, y, oWall){
			instance_create_layer(x, y - 16, "Instances", oBomb)
		} else {
			instance_create_layer(x + 16 * face, y - 16, "Instances", oBomb)
		}
	}
}