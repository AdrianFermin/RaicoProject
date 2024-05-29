function EnemiesDetectRange(radius){
	
	var player = collision_circle(x, y - 32, radius, oPlayer, false, true)
	
	if player != noone {
		
		// Coordenadas del jugador
		var viewX = player.x;
		var viewY = player.y + 16;
		
		var distance = point_distance(x, y, viewX, viewY);
		
		// Dividir la distancia en segmentos de 16 píxeles
		var step = 24;
		var numSteps = distance / step;
		
		for (var j = 1; j <= numSteps; j++) {
			// Calcular las coordenadas del punto en el segmento
			var point_x = x + j * step * (viewX - x) / distance;
			var point_y = (y - 48) + j * step * (viewY - y) / distance;
				
			var colision = collision_circle(point_x, point_y, 16, oWall, true, true);
				
			if colision != noone {
				lov = false;
				break;
			} else {
				lov = true;
			}
		}
		
		if lov {
			instanceTo = player;
			state = PURSUING_STATE;
		}
		
	} else {
		
		if instanceTo == noone {
			
			while instanceTo == noone {
				random_set_seed(current_time)
				var vista = instance_number(oNavigation);
				var indice = random_range(0, vista - 1)
				var instancia = instance_find(oNavigation, indice)
				var distancia = abs(x - instancia.x);
				
				if distancia >= 128 || instancia.object_index == oPlayer { instanceTo = instancia; }
			}
		}
	}
	
}