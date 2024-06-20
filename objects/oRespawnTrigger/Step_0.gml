if place_meeting(x, y, oPlayer) {
	
	touched = true;
	spawnX = oPlayer.lastX;
	spawnY = oPlayer.lastY;
}

if touched {
	
	oPlayer.x = spawnX;
	oPlayer.y = spawnY;
	touched = false;
	oPlayer.yspd = 0.5;
	
}