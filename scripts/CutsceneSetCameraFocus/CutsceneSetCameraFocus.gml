function CutsceneSetCameraFocus(ref, spd) {
	
	var inst;
	var Ydir;
	var Xdir;
	var actualX = oCamera.finalCamX;
	var actualY = oCamera.finalCamY;
	
	if ref != oPlayer {
		inst = sceneInstances[ref];
	} else {
		inst = ref;
	}
	
	//Salir si no encuentra jugador
	if !instance_exists(inst) exit;

	//Obtener tamaño de la camara
	var _camWidth = camera_get_view_width(view_camera[0]);
	var _camHeight = camera_get_view_height(view_camera[0]);
	
	oCamera.originHeight = _camHeight;
	oCamera.originWidth = _camWidth;

	//Obtener coordenadas de la camara
	var _camX = inst.x - _camWidth/2;
	var _camY = inst.y - _camHeight/2;

	//Evitar que se salga de los bordes
	_camX = clamp(_camX, 0, room_width - _camWidth);
	_camY = clamp(_camY, 0, room_height - _camHeight);
	
	if actualX > _camX {
		Xdir = -1;
	} else if actualX == _camX {
		Xdir = 0;
	} else {
		Xdir = 1;
	}
	
	if actualY > _camY {
		Ydir = -1;
	} else if actualY == _camY {
		Ydir = 0;
	} else {
		Ydir = 1;
	}
	
	if _camX != actualX || _camY != actualY {
		
		if actualX >= _camX - spd && actualX <= _camX + spd {
			oCamera.finalCamX = _camX;
		} else {
			oCamera.finalCamX += spd * Xdir;
		}
		
		if actualY >= _camY - spd && actualY <= _camY + spd {
			oCamera.finalCamY = _camY;
		} else {
			oCamera.finalCamY += spd * Ydir;
		}
		
		camera_set_view_pos(view_camera[0], oCamera.finalCamX, oCamera.finalCamY);
		
	} else {
		CutsceneEndAction()
	}
	
}