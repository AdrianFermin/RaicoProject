ControlsBuffer() //Controla el buffer de salto
Gravity() //Controla la gravedad
setOnground() //Controla si el jugador esta o no en el suelo

var navigationList = ds_list_create()
collision_circle_list(x, y - 32, 200, oNavigation, false, true, navigationList, true)

for (var i = 0; i < ds_list_size(navigationList); i++){
	navigationList[| i].active = true;
}

ds_list_destroy(navigationList)

if !oSystem.onCinematic {
	switch(state) {
		case BASE_STATE:
			PlayerRunning() //Controla el movimiento al correr
			PlayerUseItems() //Controla el uso de items
			PlayerHanging()
			break;
		case HURT_STATE:
			if hurtTime > 0 {
				xspd = 0;
				attacking = false;
				EntityPushed()
				hurtTime--;
			} else {
				state = BASE_STATE;
				pushSpd = 0;
				pushXTo = 0;
				pushYTo = 0;
			}
	}
}

PlayerSpriteControl() //Controla los sprites del jugador
PlayerCooldowns() //Controla los cooldowns del jugador