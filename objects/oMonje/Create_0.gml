/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

termVel = 4.25;

//Sprites
idleSpr = sMonjeIdle;
runSpr = sMonjeRun;
attackSpr = noone;
hurtSpr = sMonjeHurt;
rollSpr = sMonjeRoll;

maskSpr = sMonjeIdle;

moveSpd = 2.5;

looking = 30;
pursuingTime = 0;

lastAttack = 1;
attacking = false;
attackStage = 0;
attackCooldown = 0;

rollTimer = 0;
rollSpd = 5;

basicAttack1 = global.items[ITEM_MONJE_ATTACK_1];

