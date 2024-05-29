/// @description Receive Damage
if invincible == false {
	ReceiveDamage()
	show_message(salud)
	if state != HURT_STATE { lastState = state; }
	else { lastState = BASE_STATE }
	state = HURT_STATE;
}
