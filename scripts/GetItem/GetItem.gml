function GetItem(itemId){
	var length = ds_list_size(oSystem.inventory); //Obtiene el tamaño del inventario
	
	//Loopea a traves del inventario para ver si el item con el id indicado se encuentra presente
	for (var i = 0; i < length; i++){
		var item = oSystem.inventory[| i];
		
		if item[INVENTORY_ITEM] == itemId {
			return item; //Devuelve el item
		}
	}
	
	return noone; //Devuelve no encontrado
}