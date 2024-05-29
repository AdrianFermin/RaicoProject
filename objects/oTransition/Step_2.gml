if fadeIn != noone && layer_sequence_is_finished(fadeIn) {
	fadeIn = noone;
	caller = noone;
	room_goto(roomTo)
}
