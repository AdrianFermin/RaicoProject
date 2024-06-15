text = baseText;
textENG = baseTextENG;

for (var i = 0; i < array_length(sprites); i++) {
	
	var pos = string_pos("?", text);
	var posENG = string_pos("?", textENG);
	
	text = string_delete(text, pos, 1)
	textENG = string_delete(textENG, posENG, 1)
	
	var join = "[" + sprite_get_name(variable_instance_get(sys, sprites[i])) + "][/s]";
	
	text = string_insert(join, text, pos)
	textENG = string_insert(join, textENG, posENG)
	
}

mando = oSystem.mando;
idioma = oSystem.idioma;

scb = oSystem.idioma == IDIOMA_ESP ? scribble(text) : scribble(textENG);
scb.starting_format("fnRetro", c_white)
scb.scale(1.5)
scb.animation_speed(0.5)
scb.wrap(470 * 2, 60 * 2)
