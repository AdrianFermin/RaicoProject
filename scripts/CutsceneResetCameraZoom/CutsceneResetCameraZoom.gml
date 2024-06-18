function CutsceneResetCameraZoom(spd) {
	
	var ancho = oCamera.actualWidth;
	var alto = oCamera.actualHeight;
	var operator;
	
	var actualW = camera_get_view_width(view_camera[0]);
	var actualH = camera_get_view_height(view_camera[0]);
	
	var originW = oCamera.originWidth;
	var originH = oCamera.originHeight;
	
	if originW > ancho {
		operator = 1;
	} else {
		operator = -1;
	}
	
	ancho = originW;
	alto = originH;
	
	if ancho != actualW || alto != actualH {
		
		if actualW >= ancho - spd && actualW <= ancho + spd {
			actualW = ancho;
		} else {
			actualW += spd * operator;
		}
		
		spd = abs((spd/16) * 9);
		
		if actualH >= alto - spd && actualH <= alto + spd {
			actualH = alto;
		} else {
			actualH += spd * operator;
		}
		
		camera_set_view_size(view_camera[0], actualW, actualH);
		
	} else {
		
		oCamera.actualWidth = actualW;
		oCamera.actualHeight = actualH;
		CutsceneEndAction();
	}
}