function CreateItem(name, description, engName, engDesc, sprite, action, maxQuantity, type, damage, element){
	
	var item;
	
	item[ITEM_DEF_NAME] = name; //Setea el nombre
	item[ITEM_DEF_DESC] = description; //Setea la descripcion
	item[ITEM_DEF_ENG_NAME] = engName; //Setea el nombre en ingles
	item[ITEM_DEF_ENG_DESC] = engDesc; //Setea la descripcion en ingles
	item[ITEM_DEF_SPRITE] = sprite; //Setea el sprite
	item[ITEM_DEF_ACTION] = action; //Setea el funcionamiento
	item[ITEM_DEF_MAX] = maxQuantity; //Setea la cantidad maxima
	item[ITEM_DEF_TYPE] = type; //Setea el tipo de objeto
	item[ITEM_DEF_DAMAGE] = damage; //Setea el daño de objeto
	item[ITEM_DEF_ELEMENT] = element; //Setea el elemento de objeto
	
	return item; //Devuelve el item
}