function CutsceneChangeXscale(inst, xScale = 0){
	
	if xScale != 0 {
		inst.image_xscale = xScale;
	} else {
		inst.image_xscale = -inst.image_xscale;
	}
	
	CutsceneEndAction();
}