if baseText == noone {
	text = GetCSVText(textCode);
} else {
	text = baseText;
}

if sprites[0] != "NULL" { text = TextReplacer(text, sprites, "SPRITES"); }

mando = oSystem.mando;
idioma = oSystem.idioma;

scb = scribble(text);
scb.starting_format("fnRetro", c_white)
scb.scale(1.25)
scb.animation_speed(0.5)
scb.wrap(470 * 2, 60 * 2)
