if place_meeting(x, y, oPlayer) && !touched { touched = true; }

if touched {
	
	var actualW = camera_get_view_width(view_camera[0]);
	var actualH = camera_get_view_height(view_camera[0]);
	
	if !added {
		
		if dir == "OUT" {
		
			operator = 1;
			ancho += number;
		
		} else {
		
			operator = -1;
			ancho -= number;
		}
		
		alto = round((ancho/16) * 9);
		added = true;
		
	}
	
	if ancho != actualW || alto != actualH {
		
		SetCamera()
		if actualW >= ancho - spd && actualW <= ancho + spd {
			actualW = ancho;
		} else {
			actualW += spd * operator;
		}
		
		var spdH = abs((spd/16) * 9);
		
		if actualH >= alto - spd && actualH <= alto + spd {
			actualH = alto;
		} else {
			actualH += spdH * operator;
		}
		
		camera_set_view_size(view_camera[0], actualW, actualH);
		SetCamera()
		
	} else {
		
		ancho = actualW;
		alto = actualH;
		instance_destroy()
		
	}
}
