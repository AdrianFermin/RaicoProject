if place_meeting(x, y, oPlayer) && !touched { touched = true; }

if touched && condition() {
	
	if !place_meeting(xTo, yTo, object) && (inst == noone || !instance_exists(inst)){
		
		action()
		
	}
	
	touched = false;
}
