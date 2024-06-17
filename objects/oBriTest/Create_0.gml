function BriTestSpriteControl() {
	//Running
	if abs(xspd) > 0 { 
		sprite_index = runSpr;
		maskSpr = runSpr;
	}
	
	//Idle
	if xspd == 0 {
		sprite_index = idleSpr;
		maskSpr = idleSpr;
	}
	
	//Falling
	if yspd < 0 {
		sprite_index = jumpSpr;
		maskSpr = idleSpr;
	}
	
	//Jumping
	if yspd > 0 {
		sprite_index = fallSpr;
		maskSpr = idleSpr;
	}
}

moveSpd = 3; // Velocidad de movimiento
xspd = 0; //Velocidad X
yspd = 0; //Velocidad Y
grav = .275; //Fuerza de la gravedad
termVel = 4.25; //Velocidad maxima de caida

myFloorPlat = noone;
downSlopeSemisolid = noone;
forgetSemiSolid = noone;
moveplatXspd = 0;
movePlatMaxYspd = termVel;

runSpr = sBriTestRun;
idleSpr = sBriTestIdle;
jumpSpr = noone;
fallSpr = sBriTestFall;
maskSpr = idleSpr;