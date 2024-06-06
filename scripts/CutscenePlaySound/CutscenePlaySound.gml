function CutscenePlaySound(sound, priority, loops){
	
	audio_play_sound(sound, priority, loops)
	CutsceneEndAction()
}