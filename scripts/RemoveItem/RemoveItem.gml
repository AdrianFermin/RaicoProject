function RemoveItem(itemId){
	var item = GetItem(itemId); //Busca el item a eliminar
	
	//Si lo encuentra, lo elimina del inventario
	if item != noone {
		var pos ds_list_find_index(oSystem.inventory, item)
		ds_list_delete(oSystem.inventory, pos)
	}
}