if fadeOut != noone {
	layer_sequence_create("Transition", room_width / 2, room_height / 2, fadeOut)
	fadeOut = noone;
}
