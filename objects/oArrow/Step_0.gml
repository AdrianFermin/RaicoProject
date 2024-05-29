
//Verifica la direccion a la que se debe mover
if dir == "R" {
	xFace = 1;
} else if dir == "L" {
	xFace = -1;
} else if dir == "U" {
	yFace = -1;
} else if dir == "D" {
	yFace = 1;
} else if dir == "LD" {
	xFace = -1;
	yFace = 1;
} else if dir == "RD" {
	xFace = 1;
	yFace = 1;
} else if dir == "RU" {
	xFace = 1;
	yFace = -1;
} else if dir == "LU" {
	xFace = -1;
	yFace = -1;
}


//Verifica si no hay colisiones con una pared
if !place_meeting(x, y, oWall) {
	
	//Verifica si se debe mover horizontalmente y se mueve en la direccion horizontal correspondiente
	if xFace != 0 {
		if xFace == 1 { x += xSpd }
		else { x -= xSpd }
	}
	
	//Verifica si se debe mover verticalmente y se mueve en la direccion vertical correspondiente
	if yFace != 0 {
		if yFace == 1 { y += ySpd }
		else { y -= ySpd }
	}
	
} else {
	//De lo contrario se queda clavada en la pared
	sprite_index = sArrowIdle;
	if destroyed == false {
		destroyed = true; //Cuenta como destruida
		alarm[1] = 60; //Llama a la alarma para destruirse
	}
}

var enemy = instance_place(x, y, oEnemy) //Verifica si choco con un enemigo y guarda la instancia

//Verifica si en efecto encontro un enemigo y no esta clavada
if enemy != noone &&  !place_meeting(x, y, oWall) && destroyed == false{
	enemy.salud -= 5; //Quita vida al enemigo
	instance_destroy(); //Se destruye
}
