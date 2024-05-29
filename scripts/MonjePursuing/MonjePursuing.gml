function MonjePursuing(){
	
	if !instance_exists(oPlayer) {
		state = BASE_STATE;
		exit;
	}
	
	var player = collision_circle(x, y - 32, 250, oPlayer, false, true);
	
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
			
			if lov {
				
				instanceTo = player;
				pursuingTime = 120;
				
				if collision_circle(x, y - 32, 40, oPlayer, true, true) {
					
					state = ATTACKING_STATE;
					attackCooldown = 15;
				}
				
			}
		}
		
	} else {
		
		var visionList = ds_list_create();
				
		collision_circle_list(x, y - 32, 250, oNavigation, false, true, visionList, true)
		var listSize = ds_list_size(visionList);
				
		if listSize != 0 {
			
			var distancias = [];
			
			for(var i = 0; i < listSize; i++) {
				
				var element = visionList[| i];
				
				if !element.active { continue; }
			
				// Coordenadas del jugador
				var viewX = element.x - 8;
				var viewY = element.y;

				var distance = point_distance(x, y, viewX, viewY)

				// Dividir la distancia en segmentos de 16 píxeles
				var step = 24;
				var numSteps = distance / step;
						
				// Bucle para buscar colisiones circulares en cada segmento
				for (var j = 1; j <= numSteps; j++) {
					// Calcular las coordenadas del punto en el segmento
					var point_x = x + j * step * (viewX - x) / distance;
					var point_y = y + j * step * (viewY - y) / distance;
				
					var colision = collision_circle(point_x, point_y, 16, oWall, true, true);
				
					if colision != noone {
						lov = true;
					} else {
						lov = false;
					}
					
					if lov {
						if element.lov {
							element.sprite_index = sNavigationSeenBoth;
							array_push(distancias, element)
							break;
						}
					}
					
				}
				
			}
			
			if array_length(distancias) != 0 {
				
				var menor = point_distance(distancias[0].x, distancias[0].y, oPlayer.x, oPlayer.y);
				var element = distancias[0];
				
				for (var i = 1; i < array_length(distancias); i++) {
					
					var dis = point_distance(distancias[i].x, distancias[i].y, oPlayer.x, oPlayer.y)
					
					if dis < menor {
						menor = dis;
						element = distancias[i];
					}
				}
				
				instanceTo = element;
				
				if pursuingTime != 0 {
					pursuingTime--;
				} else {
					instanceTo = noone;
					state = BASE_STATE;
					looking = 60;
				}
			}
		}
		
		ds_list_destroy(visionList)
	}
	
}