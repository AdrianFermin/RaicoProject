Gravity()
if attackCooldown > 0 { attackCooldown = max(attackCooldown - 1, 0) }

if rollTimer > 0 { rollTimer = max(rollTimer - 1, 0) }

if state == BASE_STATE {
	
	if looking != 0 { looking = max(looking - 1, 0)}
	
	EnemiesDetectRange(150)
	
	if looking == 0 { state = RUNNING_STATE; }
	
	
} else if state == RUNNING_STATE {
	
	EnemiesDetectRange(150)
	EnemiesRun()
	
}  else if state == PURSUING_STATE {
	
	MonjePursuing()
	EnemiesRun()
	MonjeRoll()
	
} else if state == ATTACKING_STATE {
	if attackCooldown <= 0 {
		MonjeAttacks()
	}
	MonjeRoll()
} else if state == HURT_STATE {
	if hurtTime <= 0 {
		state = lastState;
		attackStage = 0;
		attackSpr = noone;
		attacking = false;
		attackCooldown = 0;
		pushSpd = 0;
		pushXTo = 0;
		pushYTo = 0;
	} else {
		EntityPushed()
		hurtTime--;
	}
} 

if state == ROLL_STATE {
	MonjeRoll()
}

if salud <= 0 {
	//instance_destroy()
}

MonjeSpriteControl()

