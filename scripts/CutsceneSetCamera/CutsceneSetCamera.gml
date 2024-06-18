function CutsceneSetCamera(ref) {
	
	var inst;
	
	if ref != oPlayer {
		inst = sceneInstances[ref];
	} else {
		inst = ref;
	}
	
	//Obtener tamaño de la camara
	var _camWidth = camera_get_view_width(view_camera[0]);
	var _camHeight = camera_get_view_height(view_camera[0]);
	
	originHeight = _camHeight;
	originWidth = _camWidth;
	
	actualWidth = _camWidth;
	actualHeight = _camHeight;

	//Obtener coordenadas de la camara
	var _camX = inst.x - _camWidth/2;
	var _camY = inst.y - _camHeight/2;

	//Evitar que se salga de los bordes
	_camX = clamp(_camX, 0, room_width - _camWidth);
	_camY = clamp(_camY, 0, room_height - _camHeight);

	//Setear coordenadas al iniciar la habitacion
	oCamera.finalCamX = _camX;
	oCamera.finalCamY = _camY;
	
	camera_set_view_pos(view_camera[0], oCamera.finalCamX, oCamera.finalCamY);
	
}