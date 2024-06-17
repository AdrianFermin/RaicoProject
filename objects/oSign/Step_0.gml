
// Inherit the parent event
event_inherited();

if active && escalaX == 0 {
	
	var player = collision_rectangle(oCamera.x + 100, oCamera.y + 440, oCamera.x + 581 * 2,
	oCamera.y + 700, oPlayer, true, true);
	
	if player == noone {
		finalX = oCamera.x + 625;
		finalY = oCamera.y + 575;
	} else {
		finalX = oCamera.x + 625;
		finalY = oCamera.y + 200;
	}
}

if oSystem.mando != mando {
	event_user(0);
}

if oSystem.idioma != idioma {
	event_user(0);
}