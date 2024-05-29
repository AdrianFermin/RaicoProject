if !touched && instance_place(x, y, oPlayer) { touched = true }

if touched {
	
	oTransition.caller = self;
	oTransition.roomTo = roomTo;
	
	oPlayer.moveLock = 10;
	oSystem.playerStartPosition = [xTo, yTo, oPlayer.face];
	touched = false;
	oPlayer.dashing = false;
	
}
