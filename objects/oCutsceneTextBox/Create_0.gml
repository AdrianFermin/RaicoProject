active = true;

iterator = 0;

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

if is_array(textCode) {
	text = GetCSVText(textCode[iterator]);
	sprites = GetCSVSprites(textCode[iterator])
} else {
	text = GetCSVText(textCode);
	sprites = GetCSVSprites(textCode)
}

if sprites[0] != "NULL" { text = TextReplacer(text, sprites, "SPRITES") }

scb = scribble(text);
scb.starting_format("fnRetro", c_white)
scb.wrap(470 * 2, 60 * 2)
	
typ = scribble_typist()
typ.in(1, 0)
oPlayer.state = READING_STATE;

