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
		createdBy.active = false;
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
	
	var spr = "[scale, 0.5][" + sprite_get_name(oSystem.acceptBtn) + "]";
	
	draw_text_scribble(finalX + 300, finalY + 40, spr)

}
