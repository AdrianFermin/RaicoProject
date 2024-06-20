function isOnArea() {
	
	if collision_circle(x + 16, y, area, oPlayer, true, true) {
		onArea = true;
	} else {
		onArea = false;
	}
}

active = false;
onArea = false;
