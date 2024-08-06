if !trigger_obj.onGround { exit; }

if !instance_exists(oCutscene) {
	
	if place_meeting(x, y, trigger_obj) {
		
		var inst = instance_place(x, y, trigger_obj);
		inst.xspd = 0;
		ResetPlayer()
		CreateCutscene(t_scene_info);
	}
}
