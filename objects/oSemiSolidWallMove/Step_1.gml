//Move in circle

dir += rotSpd;

var _targetX = xstart + lengthdir_x(radius, dir);
var _targetY = ystart + lengthdir_y(radius, dir);

xspd = _targetX - x;
//xspd = 0;
yspd = _targetY - y;
//yspd = 0;

x += xspd;
y += yspd;