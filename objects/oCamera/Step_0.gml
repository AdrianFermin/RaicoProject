//Salir si no encuentra jugador
if !instance_exists(oPlayer) exit;

if oSystem.onCinematic exit;

//Obtener tamaño de la camara
var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);

originHeight = _camHeight;
originWidth = _camWidth;

actualWidth = _camWidth;
actualHeight = _camHeight;

//Obtener coordenadas de la camara
var _camX = oPlayer.x - _camWidth/2;
var _camY = oPlayer.y - _camHeight/2;

//Evitar que se salga de los bordes
_camX = clamp(_camX, 0, room_width - _camWidth);
_camY = clamp(_camY, 0, room_height - _camHeight);

if oPlayer.xspd == 0 && oPlayer.onGround{
	
	camTrailSpd = .05;
	
	if input_check("up") {
		upTimer = clamp(upTimer + 1, 0, 60);
		
		if upTimer == 60 {
			_camY -= clamp(_camY - 128, 0, room_height - _camHeight);
		}
	
	} else {
		upTimer = 0;
	}
	
	if input_check("down") {
		
		downTimer = clamp(downTimer + 1, 0, 60);
		
		if downTimer == 60 {
			
			if clamp(_camY + 64, 0, room_height - _camHeight) >= _camHeight/2 {
				_camY += clamp(_camY + 64, 0, room_height - _camHeight - 160);
			} else {
				_camY += clamp(_camY + 64, 0, room_height - _camHeight);
			}
		}
	
	} else {
		downTimer = 0;
	}
	
} else {
	upTimer = 0;
	downTimer = 0;
	camTrailSpd = .25;
}

//Evitar saltos de camara
finalCamX += (_camX - finalCamX) * camTrailSpd;
finalCamY += (_camY - finalCamY) * camTrailSpd;

//Setear las coordenadas a la camara
camera_set_view_pos(view_camera[0], finalCamX, finalCamY)

