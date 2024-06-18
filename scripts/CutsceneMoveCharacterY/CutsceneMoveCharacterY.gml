function CutsceneMoveCharacterY(ref, yTo, relative, up, spd, camera) {
	
	var inst = ref;
	if ref != oPlayer { inst = sceneInstances[ref]; }
	yspd = spd;
	
	instance_activate_object(inst)
	
	if y_dest == -1 {
		
		if !relative {
			y_dest = yTo;
		} else {
			y_dest = inst.y + yTo;
		}
	}
	
	var yy = y_dest;
	
	with inst {
		
		if relative {
			
			if !up && y > yy {
				
				y -= spd;
				forgetSemiSolid = myFloorPlat;
				myFloorPlat = noone;
				
			} else if up && y < yy {
				
				y += spd;
				forgetSemiSolid = myFloorPlat;
				myFloorPlat = noone;
				
			} else {
				
				with other {
					y_dest = -1;
					CutsceneEndAction()
				}
			
			}
		}	
	}
	
	if camera { CutsceneSetCamera(ref) }
}