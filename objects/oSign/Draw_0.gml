// Inherit the parent event
event_inherited();

var i = 0;

if active {
	

	if escala < 1.5 {
		escala += .1;
	}

	if visibility < 1 {
		visibility += .1;
	}	
	
} else {
	
	if escala > 0 {
		escala -= .1;
	}

	if visibility > 0 {
		visibility -= .1;
	}
}

if escala > 0 {
	if oSystem.mando == "xbox" {
		i = 2;
	} else {
		i = 0;
	}

	draw_sprite_ext(imagen, i, x + 20, y - 16, escala, escala, 0, c_white, visibility)
	scribble("[scale, 0.75][fnRetro][#8a3e2b]" + text).draw(x - 60, y - 48)
}