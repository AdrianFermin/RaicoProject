function isOnArea() {
	
	if collision_circle(x + 16, y, 64, oPlayer, true, true) {
		onArea = true;
	} else {
		onArea = false;
	}
}

active = false;
onArea = false;
