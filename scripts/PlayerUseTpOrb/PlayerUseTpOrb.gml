function PlayerUseTpOrb(use){
	
	if use == undefined || tpLock != 0 exit;
	
	if use == "PLANT" {
		
		if instance_number(oTpOrb) > 0 {
			instance_destroy(oTpOrb)
		}
		
		instance_create_layer(x, y - 16, "Proyectiles", oTpOrb)
		plantLock = 60;
		
	} else {
		
		if instance_number(oTpOrb) == 0 exit;
		
		var inst = instance_find(oTpOrb, 0);
		
		oPlayer.x = inst.x;
		oPlayer.y = inst.y + 16;
		
		instance_destroy(inst);
		tpLock = 90;
	}
	
}