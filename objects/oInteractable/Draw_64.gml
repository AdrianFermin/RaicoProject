if tipo == INTERACTABLE_PRESSED {
	
	if onArea && !active {
		
		var text = string_concat("[fa_center][fa_bottom][fnRetro][c_blue]Pulsa[c_white] [", 
		sprite_get_name(oSystem.interactBtn), "]")
		
		draw_text_scribble(oCamera.finalCamX/2, camera_get_view_height(view_camera[0])+280, text)
	}
}