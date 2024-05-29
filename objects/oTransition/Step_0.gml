if caller != noone && fadeIn == noone{
	fadeIn = layer_sequence_create("Transition", room_width / 2, room_height / 2, sqFadeIn)
	fadeOut = sqFadeOut;
}
