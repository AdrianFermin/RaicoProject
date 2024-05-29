function AddItem(itemId, quantity=1){
	
	var item = GetItem(itemId); //Obtiene el item del inventario
	var itemDef = global.items[itemId]; //Obtiene la definicion del item
	
	//Verifica si el item se encuentra en el inventario
	if item != noone {
		//De ser asi, añade la cantidad a los items ya poseidos
		item[INVENTORY_QUANTITY] = clamp(item[INVENTORY_QUANTITY] + quantity, 1, itemDef[ITEM_DEF_MAX]);
		item[INVENTORY_STATE] = true; //Activa el item
	} else {
		//De lo contrario
		item[INVENTORY_ITEM] = itemId; //Agrega el item al inventario
		item[INVENTORY_QUANTITY] = clamp(quantity, 1, itemDef[ITEM_DEF_MAX]); //Agrega la cantidad
		item[INVENTORY_STATE] = true; //Activa el item
	
		ds_list_add(inventory, item); //Guarda la lista del inventario
	}
	
	
}