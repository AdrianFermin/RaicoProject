if !touched && instance_place(x, y, oPlayer) { touched = true }

if touched {
	
	oTransition.caller = self;
	oTransition.roomTo = roomTo;
	
	if camera_get_view_width(view_camera[0]) != -1 {
		oSaveLoad.rmH = camera_get_view_height(view_camera[0]);
		oSaveLoad.rmW = camera_get_view_width(view_camera[0]);
	}
	
	oPlayer.moveLock = 10;
	oSystem.playerStartPosition = [xTo, yTo, oPlayer.face];
	touched = false;
	oPlayer.dashing = false;
	
}
