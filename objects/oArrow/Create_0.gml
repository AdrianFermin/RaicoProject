//Verificar direccion de la flecha para rotar el sprite y cambiar el punto de aparicion
dir = oPlayer.directionBuffered; //Direccion de la flecha
xSpd = 10; //Velocidad horizontal
ySpd = 10; //Velocidad vertical
xFace = 0; //Cara horizontal
yFace = 0; //Cara vertical
destroyed = false; //Esta destruida?

//Verifica si esta en el suelo
if oPlayer.onGround {
	
	//Reasigna los valores a valores validos para el suelo
	if dir == "LD" {
		dir = "L"
	} else if dir == "RD" {
		dir = "R"
	}  else if dir == "D" {
		instance_destroy()
	}
}

//Asigna el angulo y posicion de la flecha al aparecer
if dir == "R"{
	image_angle = 0;
	y = y - 32;
	x = x + 16;
} else if dir == "L"{
	image_angle = 180;
	y = y - 32;
	x = x - 16;
} else if dir == "U"{
	image_angle = 90;
	y = y - 48;
} else if dir == "D"{
	image_angle = 270;
	y = y;
} else if dir == "RU"{
	image_angle = 45;
	y = y - 48;
	x = x + 16;
} else if dir == "LU"{
	image_angle = 135;
	y = y - 48;
	x = x -16;
} else if dir == "LD"{
	image_angle = 215;
	y = y - 32;
	x = x - 16;
} else if dir == "RD"{
	image_angle = 325;
	y = y - 32;
	x = x + 16;
}

alarm[0] = 90; //Llama a la alarma de destruccion automatica
UseItem(ITEM_BASIC_ARROW) //Gasta una flecha