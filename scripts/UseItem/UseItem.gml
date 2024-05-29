function UseItem(itemId){
	
	var item = GetItem(itemId) //Busca el objeto a usar
	
	//Verifica si existe
	if item != noone {
		var itemDef = global.items[itemId]; //Obtiene la definicion del item
		var action = itemDef[ITEM_DEF_ACTION] //Obtiene la funcionalidad del item
		
		if action != undefined { action(); } //Ejecuta la funcionalidad del item
		
		//Verifica si el item no es de tipo infinito
		if itemDef[ITEM_DEF_TYPE] == "CONSUMIBLE"{
			item[INVENTORY_QUANTITY] -= 1; //Si no, resta uno a la cantidad
			
			//Verifica si el item tiene 0 o menos cantidad
			if item[INVENTORY_QUANTITY] <= 0 {
				item[INVENTORY_QUANTITY] = 0; //Seteto el item a cero
				item[INVENTORY_STATE] = false; //De ser asi, deshabilitar el item
			}
		}
	}
}