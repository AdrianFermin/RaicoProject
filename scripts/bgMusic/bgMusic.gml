function bgMusic(){
	
	if !audio_is_playing(Ambient_Music) {
		if array_contains(bgAmbientMusic, room) {
			audio_stop_all()
			audio_play_sound(Ambient_Music, 0, true)
		}
	}
	
	if !audio_is_playing(stForest) {
		if array_contains(bgForestMusic, room) {
			audio_stop_all()
			audio_play_sound(stForest, 0, true)
		}
	}
}