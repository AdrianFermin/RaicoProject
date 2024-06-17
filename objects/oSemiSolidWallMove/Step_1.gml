//Move in circle

dir += rotSpd;

var _targetX = xstart + lengthdir_x(radius, dir);
var _targetY = ystart + lengthdir_y(radius, dir);

if type == "Vertical" {
	
	xspd = 0;
	yspd = _targetY - y;
	
} else if type == "Horizontal" {
	
	yspd = 0;
	xspd = _targetX - x;
	
} else {
	
	xspd = _targetX - x;
	yspd = _targetY - y;
	
}

x += xspd;
y += yspd;