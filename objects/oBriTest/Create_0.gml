// Inherit the parent event
event_inherited();

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

runSpr = sBriTestRun;
idleSpr = sBriTestIdle;
jumpSpr = noone;
fallSpr = sBriTestFall;
maskSpr = idleSpr;