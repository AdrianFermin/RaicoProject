function CutsceneMoveCharacterX(ref, xTo, relative, spd) {
	
	var inst = ref;
	if ref != oPlayer { inst = sceneInstances[ref]; }
	
	instance_activate_object(inst)
	
	if x_dest == -1 {
		
		if !relative {
			x_dest = xTo;
		} else {
			x_dest = inst.x + xTo;
		}
	}
	
	var xx = x_dest;
	
	with inst {
		
		sprite_index = runSpr;
		
		if !collision_circle(xx, y, 1, inst, true, false) {
			var dir = point_direction(x, y, xx, y);
			var lDirX = lengthdir_x(spd, dir);
			
			xspd = lDirX;
			CheckCollisions()
			
		} else {
			
			sprite_index = idleSpr;
			x = xx;
			xspd = 0;
			
			with other {
				x_dest = -1;
				CutsceneEndAction()
			}
		}
		
	}
}