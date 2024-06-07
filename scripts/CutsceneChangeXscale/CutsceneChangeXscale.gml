function CutsceneChangeXscale(ref, xScale = 0){
	
	var inst = ref;
	if ref != oPlayer { inst = sceneInstances[ref]; }
	
	if ref == oPlayer {
		if xScale != 0 {
			inst.face = xScale;
		} else {
			inst.face = -inst.face;
		}
	} else {
		if xScale != 0 {
			inst.image_xscale = xScale;
		} else {
			inst.image_xscale = -inst.image_xscale;
		}
	}

	CutsceneEndAction();
}