active = true;

image_xscale = 0;
image_yscale = 0;

var player = collision_rectangle(oCamera.x + 100, oCamera.y + 440, oCamera.x + 581 * 2,
	oCamera.y + 700, oPlayer, true, true);
	
finalX = 0;
finalY = 0;
	
if player == noone {
	finalX = oCamera.x + 625;
	finalY = oCamera.y + 575;
} else {
	finalX = oCamera.x + 625;
	finalY = oCamera.y + 200;
}

scb = oSystem.idioma == IDIOMA_ESP ? scribble(text) : scribble(textENG);
scb.starting_format("fnRetro", c_white)
scb.wrap(470 * 2, 60 * 2)
	
typ = scribble_typist()
typ.in(1, 0)
oPlayer.state = READING_STATE;

