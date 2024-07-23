
// Inherit the parent event
event_inherited();

text = "";

if baseText == noone {
	text = GetCSVText(textCode);
} else {
	text = baseText;
}

sprites = GetCSVSprites(textCode);

mando = oSystem.mando;
idioma = oSystem.idioma;

escalaX = 0;
escalaY = 0;

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

text = TextReplacer(text, sprites, "SPRITES");

scb = scribble(text);
scb.starting_format("fnRetro", c_white)
scb.scale(1.5)
scb.animation_speed(0.5)
scb.wrap(470 * 2, 60 * 2)

counter = 0;