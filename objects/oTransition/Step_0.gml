if caller != noone && fadeIn == noone {
	
	fadeIn = layer_sequence_create("Transition", room_width / 2, room_height / 2, sqFadeIn)
	layer_sequence_xscale(fadeIn, 5);
	layer_sequence_yscale(fadeIn, 5);
	fadeOut = sqFadeOut;
	
}
