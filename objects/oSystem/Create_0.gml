InitItems();

//Crear lista de inventario
inventory = ds_list_create();

InitialItems()

onCinematic = false;

playerStartPosition = noone;

bgAmbientMusic = [Habitacion2]
bgForestMusic = [Test_Room2, Habitacion1]

//Elements

//Listado de elementos debiles por elementos
weakToFire = [];
weakToWater = [ELEMENT_FIRE, ELEMENT_EARTH];
weakToNormal = [];
weakToEarth = [ELEMENT_NORMAL];
weakToThunder = [ELEMENT_WATER, ELEMENT_NORMAL];
	
//Listado de elementos fuertes por elementos
strongToFire = [ELEMENT_WATER, ELEMENT_EARTH];
strongToWater = [];
strongToNormal = [ELEMENT_EARTH];
strongToEarth = [ELEMENT_WATER];
strongToThunder = [ELEMENT_EARTH];

//Lenguaje
idioma = IDIOMA_ENG;

//Listado de acciones y botones
mando = noone;

interactBtn = noone;
acceptBtn = noone;
cancelBtn = noone;

moveRightBtn = noone;
moveLeftBtn = noone;
moveUpBtn = noone;
moveDownBtn = noone;

jumpBtn = noone;

ControlControllerButtons()




