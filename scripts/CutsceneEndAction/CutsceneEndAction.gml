function CutsceneEndAction(){
	scene++;
	
	if scene > array_length(scene_info) - 1 {
		oSystem.onCinematic = false;
		instance_destroy()
	}
}