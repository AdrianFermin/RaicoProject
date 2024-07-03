//Functions

//Verifica cuando se esta o no en el suelo
function setOnground() {
	
	if myFloorPlat == noone {
		CheckFallCollision()
	}
	
	if place_meeting(x, y + 1, myFloorPlat){
		onGround = true; //Setea el personaje en el suelo
		wallJumped = 0; //Reinicia el valor de la pared saltada anteriormente
		wallJumpCount = 0; //Reinicia el valor del contador de la pared saltada anteriormente
		airDashCount = 0; //Reinicia el contador de dashes en el aire
		coyoteJumpTimer = 0; //Reinicia el coyote  time
		
		if face == 1 {
			lastX = oPlayer.x - 64;
		} else if face == -1 {
			lastX = oPlayer.x + 64;
		}
		
		lastY = oPlayer.y - 32;
		
	} else {
		//Verifica si esta en el suelo y aplica el timer del coyote time
		if onGround { coyoteJumpTimer = coyoteJumpFrames; }
		onGround = false; //Setea el personaje no en el suelo
		myFloorPlat = noone;
	}
	
}


function checkForSemisolidPlatform(_x, _y) {
	
	var _return = noone;
	
	if yspd >= 0 && place_meeting(_x, _y, oSemiSolidWall) {
		
		var _list = ds_list_create();
		var _listSize = instance_place_list(_x, _y, oSemiSolidWall, _list, false)
		
		for (var i = 0; i < _listSize; i++) {
			
			var _listInst = _list[| i];
			
			if _listInst != forgetSemiSolid && floor(bbox_bottom) <= ceil(_listInst.bbox_top - _listInst.yspd) {
				
				_return = _listInst;
				i = _listSize;
			}
		}
		
		ds_list_destroy(_list)
	}
	
	return _return;
}

//Estadisticas
salud = 100;
defense = 0;
damagedBy = noone;
element = ELEMENT_NORMAL;
invincible = 0;

//Equipment
equipment[WEAPON] = KATANA; //Arma equipada
equipment[BASIC_ATTACK] = ITEM_BASIC_ATTACK; //Ataque basico equipado
equipment[JUMP] = ITEM_BASIC_JUMP; //Salto equipado
equipment[DASH] = ITEM_BASIC_DASH; //Dash equipado
equipment[BOW] = ITEM_BASIC_BOW; //Arco equipado
equipment[ARROW] = ITEM_BASIC_ARROW; //Flecha equipada
equipment[WALL_BOOTS] = ITEM_WALL_BOOTS; //Botas de salto en la pared
equipment[BOMBS] = ITEM_BASIC_BOMB; //Bombas equipadas

//State
state = BASE_STATE; //Estados del jugador

//Sprites
maskSpr = sPlayerKIdle; //Mascara de colision
idleSpr = sPlayerKIdle; //Sprite idle
runSpr = sPlayerKRunning; //Sprite corriendo
jumpSpr = sPlayerJumping; //Sprite saltando
dashSpr = sPlayerDashing; //Sprite usando dash
basicAttackSpr = sPlayerKAttack1; //Sprite del ataque basico
climbingSpr = sPlayerClimbingUp; //Sprite escalando
dyingSpr = sPlayerDying; //Sprite muriendo
hurtSpr = sPlayerHurt; //Sprite dañado

//Sounds
dashSnd = snDashTest; //Sonido del dash
jumpSnd = snJumpTest; //Sonido del salto

//Moving
face = 1; //Hacia donde mira el personaje
moveDir = 0; //Direccion de movimiento
moveSpd = 3; // Velocidad de movimiento
xspd = 0; //Velocidad X
yspd = 0; //Velocidad Y
moveLock = 0; //Bloqueo de movimiento

//Dashing
dashSpd = 15; //Velocidad del dash
canDash = false; //Puede usar el dash?
dashLock = 0; //Bloqueo de dash
dashing = false; //Esta haciendo el dash?
airDashCount = 0; //Cantidad de dashes en el aire
airDashMax = 2; //Cantidad maxima de dashes en el aire

//Jumping
grav = .275; //Fuerza de la gravedad
termVel = 4.25; //Velocidad maxima de caida
jspd = -6.15; //Velocidad del salto
jumpBufferTime = 3; //Tiempo estandar de buffer para ejecutar el salto
jumpKeyBuffered = false; //Verificacion de buffer para el salto
jumpKeyBufferTimer = 0; //Temporizador de buffer para el salto
wallJumped = 0; //Instancia de la pared anteriormente saltada
wallJumpCount = 0; //Conteo de saltos en la misma pared
onGround = true; //Esta en el suelo?
jumpLock = 0;
lastX = 0;
lastY = 0;
//Coyote Time
coyoteJumpFrames = 5; //Frames para el coyote time
coyoteJumpTimer = 0; //Timer para el coyote time

//CLimb
hanging = false;
climbSpd = 1;

//Attack
attacking = false; //Esta atacando?
attackLock = false; //Puede atacar?
attacksList = undefined; //Listado de listas de ataques
attack = noone;

//Bow
directionBuffered = noone;
bowLock = 0;

//Bombs
bombLock = 0;

//TP Orb
plantLock = 0;
tpLock = 0;

//Take Damage
hurtTime = 0;
pushXTo = 0;
pushYTo = 0;
pushSpd = 0;

//Moving Platforms
myFloorPlat = noone;
downSlopeSemisolid = noone;
forgetSemiSolid = noone;
moveplatXspd = 0;
movePlatMaxYspd = termVel;











