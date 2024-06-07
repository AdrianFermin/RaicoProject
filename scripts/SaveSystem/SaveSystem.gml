function SetActualStruct() {
	
	if room == Habitacion1 { actualStruct = global.levelData.level_1 }
	if room == Test_Room { actualStruct = global.levelData.level_2 }
	if room == Test_Room2 { actualStruct = global.levelData.level_3 }
	
}

function RemoveSavedInstance(levelName, arrayName, counterName, inst) {

	var level = struct_get(global.levelData, levelName);
	var data = struct_get(level, arrayName);
	var index = -1;
	
	for (var i = 0; i < array_length(data); i++) {
		
		var current = data[i];
		
		if current.refInst == inst {
			index = i;
			break;
		}
	}
	
	array_delete(data, index, 1)
	struct_set(level, counterName, struct_get(level, counterName) - 1)
	
}

function SaveRoom(roomFrom = noone) {
	
	var _permCutsceneTriggerNum = instance_number(oCutsceneTriggerPerm);
	var _CutsceneTriggerNum = instance_number(oCutsceneTrigger);
	
	var _roomStruct = {
		
		permCutsceneTriggerNum: _permCutsceneTriggerNum,
		permCutsceneTriggerData: array_create(_permCutsceneTriggerNum),
		CutsceneTriggerNum: _CutsceneTriggerNum,
		CutsceneTriggerData: array_create(_CutsceneTriggerNum),
	}
	
	#region Get the Data
	
	#region Cutscene Permanent Trigger
	
		for (var i = 0; i < _permCutsceneTriggerNum; i++) {
			
			var inst = instance_find(oCutsceneTriggerPerm, i);
			
			_roomStruct.permCutsceneTriggerData[i] = {
				
				x: inst.x,
				y: inst.y,
				refInst: inst,
				var_struct: {
					t_scene_info: inst.t_scene_info,
					image_xscale: inst.image_xscale,
					image_yscale: inst.image_yscale,
				}
			}
		}
	
	#endregion
	
	#region Cutscene Trigger
	
		for (var i = 0; i < _CutsceneTriggerNum; i++) {
			
			var inst = instance_find(oCutsceneTrigger, i);
			
			_roomStruct.CutsceneTriggerData[i] = {
				
				x: inst.x,
				y: inst.y,
				var_struct: {
					t_scene_info: inst.t_scene_info,
					image_xscale: inst.image_xscale,
					image_yscale: inst.image_yscale,
				}
			}
		}
	
	#endregion
	
	#endregion
	
	#region Store Room Data
	
	if roomFrom == noone { roomFrom = room }
	
	if roomFrom == Habitacion1 { global.levelData.level_1 = _roomStruct }
	if roomFrom == Test_Room { global.levelData.level_2 = _roomStruct }
	if roomFrom == Test_Room2 { global.levelData.level_3 = _roomStruct }
	
	#endregion
}

function LoadRoom() {
	
	var _roomStruct = 0;
	
	#region Get Room Data
	
	if room == Habitacion1 { _roomStruct = global.levelData.level_1 }
	if room == Test_Room { _roomStruct = global.levelData.level_2 }
	if room == Test_Room2 { _roomStruct = global.levelData.level_3 }
	
	#endregion
	
	if !is_struct(_roomStruct) { exit; }
	
	#region Load the Data
	
	#region Cutscene Permanent Trigger
	
		if instance_exists(oCutsceneTriggerPerm) { instance_destroy(oCutsceneTriggerPerm) }
		
		for (var i = 0; i < _roomStruct.permCutsceneTriggerNum; i++) {
			
			var inst = _roomStruct.permCutsceneTriggerData[i]
			
			instance_create_layer(inst.x, inst.y, "Triggers", oCutsceneTriggerPerm, inst.var_struct)
		}
	
	#endregion
	
	#region Cutscene Trigger
	
		if instance_exists(oCutsceneTrigger) { instance_destroy(oCutsceneTrigger) }
		
		for (var i = 0; i < _roomStruct.CutsceneTriggerNum; i++) {
			
			var inst = _roomStruct.CutsceneTriggerData[i]
			
			instance_create_layer(inst.x, inst.y, "Triggers", oCutsceneTrigger, inst.var_struct)
		}
	
	#endregion
	
	#endregion
	
}