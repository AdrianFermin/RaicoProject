draw_self()

//if !instance_exists(oPlayer) { exit; }

//if state == BASE_STATE || state == RUNNING_STATE {
//	draw_circle_color(x, y - 32, 150, c_red, c_red, true);
//} else if state == PURSUING_STATE {
//	draw_circle_color(x, y - 32, 250, c_red, c_blue, true);
//	draw_circle_color(x, y - 32, 40, c_red, c_yellow, true);
//} else if state == ATTACKING_STATE {
//	draw_circle_color(x, y - 32, 40, c_red, c_yellow, true);
//}

//if instanceTo != noone {
//	var viewX = instanceTo.x;
//	var viewY = instanceTo.y;
		
//	var distance = point_distance(x, y, viewX, viewY);
		
//	// Dividir la distancia en segmentos de 16 píxeles
//	var step = 8;
//	var numSteps = distance / step;
		
//	for (var j = 1; j <= numSteps; j++) {
//		// Calcular las coordenadas del punto en el segmento
//		var point_x = x + j * step * (viewX - x) / distance;
//		var point_y = (y - 48) + j * step * (viewY - y) / distance;
	
//		var colision = collision_circle(point_x, point_y, 16, oWall, true, true);
				
//		if colision != noone {
//			draw_circle(point_x, point_y, 8, true);
//			break;
//		} else { draw_circle(point_x, point_y, 8, true); }

//	}
//}
