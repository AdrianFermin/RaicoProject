// Coordenadas del jugador
if !instance_exists(oPlayer) { exit; }

if !active { exit; }
active = false;

var player_x = oPlayer.x;
var player_y = oPlayer.y - 24;

var distance = point_distance(x, y, player_x, player_y)

// Dividir la distancia en segmentos de 16 píxeles
var step = 24;
var numSteps = distance / step;

// Bucle para buscar colisiones circulares en cada segmento
for (var i = 1; i <= numSteps; i++) {
    // Calcular las coordenadas del punto en el segmento
    var point_x = x + i * step * (player_x - x) / distance;
    var point_y = y + i * step * (player_y - y) / distance;
    
	var colision = collision_circle(point_x, point_y, 16, oWall, true, true);
	
    // Verificar si hay una colisión circular en el punto
    if colision != noone {
		lov = false
		sprite_index = sNavigation;
        break;
    } else {
		if collision_circle(x, y, 182, oPlayer, false, true) != noone {
			lov = true;
			if sprite_index != sNavigationSeenBoth { sprite_index = sNavigationSeen; }
		} else {
			lov = false
			sprite_index = sNavigation;
		}
		
	}
}