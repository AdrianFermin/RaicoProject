
// Inherit the parent event
event_inherited();

text = baseText;
textENG = baseTextENG;

sys = instance_nearest(x, y, oSystem);

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

for (var i = 0; i < array_length(sprites); i++) {
	
	var pos = string_pos("?", text);
	var posENG = string_pos("?", textENG);
	
	text = string_delete(text, pos, 1)
	textENG = string_delete(textENG, posENG, 1)
	
	var join = "[" + sprite_get_name(variable_instance_get(sys, sprites[i])) + "]";
	
	text = string_insert(join, text, pos)
	textENG = string_insert(join, textENG, posENG)
	
}

scb = oSystem.idioma == IDIOMA_ESP ? scribble(text) : scribble(textENG);
scb.starting_format("fnRetro", c_white)
scb.scale(1.5)
scb.animation_speed(0.5)
scb.wrap(470 * 2, 60 * 2)

sub = 0;
counter = 0;