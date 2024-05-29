function SetCamera(){
	//Salir si no encuentra jugador
	if !instance_exists(oPlayer) exit;

	//Obtener tamaño de la camara
	var _camWidht = camera_get_view_width(view_camera[0]);
	var _camHeight = camera_get_view_height(view_camera[0]);

	//Obtener coordenadas de la camara
	var _camX = oPlayer.x - _camWidht/2;
	var _camY = oPlayer.y - _camHeight/2;

	//Evitar que se salga de los bordes
	_camX = clamp(_camX, 0, room_width - _camWidht);
	_camY = clamp(_camY, 0, room_height - _camHeight);

	//Setear coordenadas al iniciar la habitacion
	oCamera.finalCamX = _camX;
	oCamera.finalCamY = _camY;
}