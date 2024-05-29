//draw_self()

//if !active { exit; }

////Coordenadas del jugador
//var player_x = oPlayer.x;
//var player_y = oPlayer.y - 24;

//var distance = point_distance(x, y, player_x, player_y)

//// Dividir la distancia en segmentos de 16 píxeles
//var step = 24;
//var numSteps = distance / step;

//// Bucle para buscar colisiones circulares en cada segmento
//for (var i = 1; i <= numSteps; i++) {
//    // Calcular las coordenadas del punto en el segmento
//    var point_x = x + i * step * (player_x - x) / distance;
//    var point_y = y + i * step * (player_y - y) / distance;
	
//	var colision = collision_circle(point_x, point_y, 16, oWall, false, true);
//	 // Verificar si hay una colisión circular en el punto
//    if colision != noone {
//		draw_circle(point_x, point_y, 16, true)
//        break;
//    } else {
//		draw_circle(point_x, point_y, 16, true)
//	}
	
//}
