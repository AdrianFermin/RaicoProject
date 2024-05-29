//Movimiento
xspd = 0;
yspd = 0;
moveLock = 30;
moveDir = 1;
face = 1;
termVel = 4.25;

//Perseguir
lov = false;
instanceTo = noone;

//Hurt
lastState = BASE_STATE;
hurtTime = 0;
invincible = false;
pushSpd = 0;
pushXTo = 0;
pushYTo = 0;

//Moving Platforms
myFloorPlat = noone;
downSlopeSemisolid = noone;
moveplatXspd = 0;
movePlatMaxYspd = termVel;