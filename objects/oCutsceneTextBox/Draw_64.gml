draw_sprite_ext(sprite_index, 0, finalX, finalY, image_xscale, image_yscale, 0, c_white, 0.75)

if active {
	if image_xscale == 2 {
		scb.draw(finalX - 475, finalY - 75, typ)
	} else {
		image_xscale += 0.1;
		image_yscale += 0.1;
	}
} else {
	image_xscale -= 0.15;
	image_yscale -= 0.15;
	
	if image_xscale <= 0 {
		instance_destroy()
	}
}

if active && image_xscale == 2 {
	
	if counter > 7.5 {
		
		if sub != 3 {
			sub++;
			counter = 0;
		} else {
			sub = 0;
			counter = 0;
		}
	} else {
		counter += .75;
	}
	
	if oSystem.mando == "teclado" {
		draw_sprite_ext(oSystem.acceptBtn, sub, finalX + 360, finalY + 40, 2.5, 2.5, 0, c_white, 1)
	} else {
		draw_sprite_ext(oSystem.acceptBtn, sub, finalX + 440, finalY + 50, 2.25, 2.25, 0, c_white, 1)
	}
}
