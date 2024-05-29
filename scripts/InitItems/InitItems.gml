function InitItems(){
	
	//Inicializa los items en el sistema usando el metodo de crear items
	
	//Objetos
	global.items[ITEM_BASIC_ATTACK] = CreateItem("Ataque Basico", "El ataque mas basico de todos", 
	"Basic Attack", "Just a basic attack", undefined, PlayerBasicAttack, 100, "INFINITE", 4,
	ELEMENT_NORMAL);
	global.items[ITEM_BASIC_JUMP] = CreateItem("Salto Basico", "El salto mas basico de todos", 
	"Basic Jump", "Just a basic jump", undefined, PlayerJump, 100, "INFINITE", 0, ELEMENT_NORMAL);
	global.items[ITEM_BASIC_DASH] = CreateItem("Dash Basico", "El dash mas basico de todos", 
	"Basic Dash", "Just a basic dash", undefined, PlayerDashing, 100, "INFINITE", 0, ELEMENT_NORMAL);
	global.items[ITEM_BASIC_ARROW] = CreateItem("Flecha Basica", "La flecha mas basica de todas", 
	"Basic Arrow", "Just a basic arrow", sArrowIdle, undefined, 30, "CONSUMIBLE", 3, ELEMENT_NORMAL);
	global.items[ITEM_BASIC_BOW] = CreateItem("Arco Basico", "El arco mas basico de todos", 
	"Basic Bow", "Just a basic bow", undefined, PlayerUseBow, 100, "INFINITE", 0, ELEMENT_NORMAL);
	global.items[ITEM_WALL_BOOTS] = CreateItem("Salto en pared", "Te permite saltar en la pared", 
	"Wall Boots", "With this boots you can jump on walls", undefined, WallBoots, 100, "INFINITE",
	0, ELEMENT_NORMAL);
	global.items[ITEM_BASIC_BOMB] = CreateItem("Bomba Basica", "La bomba mas basica de todas", 
	"Basic Bomb", "Just a basic bomb", undefined, PlayerUseBombs, 30, "CONSUMIBLE", 15,
	ELEMENT_NORMAL);
	
	//Ataques
	global.items[ITEM_MONJE_ATTACK_1] = CreateItem("Generico", "Generico", 
	"Generico", "Generico", undefined, undefined, 100, "INFINITE", 2,
	ELEMENT_NORMAL);
	
}