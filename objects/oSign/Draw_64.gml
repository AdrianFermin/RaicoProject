// Inherit the parent event
event_inherited();

if oSystem.onCinematic { exit; }

if escalaX > 0 { draw_sprite_ext(sTextBox1, 0, finalX, finalY, escalaX, escalaY, 0, c_white, 0.75) }

if active {
	
	if escalaX >= 2 {
		scb.draw(finalX - 475, finalY - 75)
	} else {
		escalaX += 0.15;
		escalaY += 0.15;
	}
} else {
	
	if escalaX > 0 {
		escalaX -= 0.20;
		escalaY -= 0.20;
	}

}