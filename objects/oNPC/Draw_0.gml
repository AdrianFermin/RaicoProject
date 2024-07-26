
if image_index == sprite_get_info(spr).num_subimages {
	
	image_index = 0;
	
}

draw_sprite_ext(spr, image_index, x + 16, y + 32, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

draw_circle(x + 16, y, 64, true);
