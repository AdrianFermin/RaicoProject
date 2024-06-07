bgMusic()

if playerStartPosition != noone {
	oPlayer.x = playerStartPosition[0];
	oPlayer.y = playerStartPosition[1];
	oPlayer.face = playerStartPosition[2];
	
	playerStartPosition = noone;
	oPlayer.moveLock = 10;
	SetCamera()
}
//instance_create_layer(x, y, "Instances", oNavigation);
var tileWidth = 48; // Ancho del tile en píxeles
var tileHeight = 48; // Alto del tile en píxeles

// Dimensiones de la pantalla
var screenWidth = room_width;
var screenHeight = room_height;

// Calcular el número de tiles en la pantalla
var tilesX = screenWidth div tileWidth;
var tilesY = screenHeight div tileHeight;

// Bucle para recorrer cada tile
for (var i = 0; i < tilesX; i++) {
    for (var j = 0; j < tilesY; j++) {
        // Calcular las coordenadas para crear la instancia del objeto en este tile
        var posX = i * tileWidth;
        var posY = j * tileHeight;
        
        // Crear una instancia del objeto en este tile
        if place_free(posX, posY) {
			instance_create_layer(posX, posY, "Instances", oNavigation);
		}
    }
}

#region Instances to Destroy
	
	if array_length(instancesToDestroy) != 0 {
		
		for (var i = 0; i < array_length(instancesToDestroy); i++) {
			
			var struct = instancesToDestroy[i];
			
			if room == struct.roomFrom {
				
				var data = struct_get(oSaveLoad.actualStruct, struct.structName)
				
				for (var j = 0; j < array_length(data); j++) {
					
					var current = data[j];
					
					if current.refInst == struct.inst {
						
						var a = instance_place(current.x, current.y, struct.obj);
						instance_destroy(a);
						array_delete(instancesToDestroy, i, 1);
					}
				}
			}
			
		}
	}

#endregion