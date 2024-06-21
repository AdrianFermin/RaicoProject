bgMusic()

scribble_font_bake_outline_8dir("fnRetro1", "fnRetro", c_black, false)

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