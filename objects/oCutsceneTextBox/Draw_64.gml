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
	
	var spr = "[" + sprite_get_name(oSystem.acceptBtn) + "]";

	if oSystem.mando == "teclado" {
		draw_text_scribble(finalX + 340, finalY + 35, "[scale, 3]" + spr)
	} else {
		draw_text_scribble(finalX + 420, finalY + 20, "[scale, 2.25]" + spr)
	}
}
