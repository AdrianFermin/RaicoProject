Gravity()

if timer != 0 { timer = max(timer - 1, 0) }

if timer == 0 {
	
	for (var i = 0; i < array_length(validEntities); i++) {
		collision_circle_list(x, y, 32, validEntities[i], false, true, entitiesList, true)
	}
	
	if ds_list_size(entitiesList) != 0 {
		timer = 200;
		for (var i = 0; i < ds_list_size(entitiesList); i++) {
			
			var pushDir;
		
			if entitiesList[| i].x > x {
				pushDir = 1;
			} else {
				pushDir = -1;
			}
			
			with entitiesList[| i] {
				
				if object_index == oWallBreak {
					
					damagedBy = global.items[ITEM_BASIC_BOMB];
					event_user(0);
					
				} else {
					
					if !invincible {
						damagedBy = global.items[ITEM_BASIC_BOMB];
						event_user(0);
						self.pushSpd = 3;
						pushXTo = pushDir;
						self.hurtTime = 12;
					}
				}
				
				
			}
		}
	}
	
	ds_list_destroy(entitiesList)
	instance_destroy()
}
