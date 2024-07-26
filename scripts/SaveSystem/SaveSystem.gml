function SetActualStruct() {
	
	if room == Habitacion1 { actualStruct = global.levelData.level_1 }
	if room == Habitacion2 { actualStruct = global.levelData.level_2 }
	if room == Habitacion3 { actualStruct = global.levelData.level_3 }
	if room == Habitacion4 { actualStruct = global.levelData.level_4 }
	
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
	
	//Get instances numbers
	instance_activate_object(oCutsceneTriggerPerm)
	var _permCutsceneTriggerNum = instance_number(oCutsceneTriggerPerm);
	
	instance_activate_object(oCutsceneTrigger)
	var _CutsceneTriggerNum = instance_number(oCutsceneTrigger);
	
	instance_activate_object(oChest)
	var _chestNum = instance_number(oChest);
	
	instance_activate_object(oNPC)
	var _npcNum = instance_number(oNPC)
	
	instance_activate_object(oEntity)
	var _entitiesNum = instance_number(oEntity);
	
	var _roomStruct = {
		
		permCutsceneTriggerNum: _permCutsceneTriggerNum,
		permCutsceneTriggerData: array_create(_permCutsceneTriggerNum),
		
		CutsceneTriggerNum: _CutsceneTriggerNum,
		CutsceneTriggerData: array_create(_CutsceneTriggerNum),
		
		chestNum: _chestNum,
		chestData: array_create(_chestNum),
		
		npcNum: _npcNum,
		npcData: array_create(_npcNum),
		
		entitiesNum: _entitiesNum,
		entitiesData: array_create(_entitiesNum),
		
		cameraSize: array_create(2),
		
	}
	
	#region Get the Data
	
	#region Camera
	
		_roomStruct.cameraSize[0] = rmW;
		_roomStruct.cameraSize[1] = rmH;
		
	#endregion
	
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
	
	#region Chest
		
		for (var i = 0; i < _chestNum; i++) {
			
			var inst = instance_find(oChest, i);
			
			_roomStruct.chestData[i] = {
				x: inst.x,
				y: inst.y,
				var_struct: {
					opened: inst.opened,
					content: inst.content,
					quantity: inst.quantity,
					area: inst.area
				}
			}
		}
	
	#endregion
	
	#region NPCs
		
		for (var i = 0; i < _npcNum; i++) {
			
			var inst = instance_find(oNPC, i);
			
			_roomStruct.npcData[i] = {
				x: inst.x,
				y: inst.y,
				var_struct: {
					area: inst.area,
					spr: inst.spr,
					baseText: inst.baseText,
					extraText: inst.extraText,
					spd: inst.spd,
					actionType: inst.actionType,
					used: inst.used,
					look: inst.look,
					customFn: inst.customFn
				}
			}
		}
	
	#endregion
	
	#region Entities
	
		for (var i = 0; i < _entitiesNum; i++) {
			
			var inst = instance_find(oEntity, i);
			
			_roomStruct.entitiesData[i] = {
				x: inst.x,
				y: inst.y,
				object_index: inst.object_index,
				var_struct: {
					image_xscale: inst.image_xscale,
				}
			}
		}
		
	#endregion
	
	#endregion
	
	#region Store Room Data
	
	if roomFrom == noone { roomFrom = room }
	
	if roomFrom == Habitacion1 { global.levelData.level_1 = _roomStruct }
	if roomFrom == Habitacion2 { global.levelData.level_2 = _roomStruct }
	if roomFrom == Habitacion3 { global.levelData.level_3 = _roomStruct }
	if roomFrom == Habitacion4 { global.levelData.level_4 = _roomStruct }
	
	#endregion
}

function LoadRoom() {
	
	var _roomStruct = 0;
	
	#region Get Room Data
	
	if room == Habitacion1 { _roomStruct = global.levelData.level_1 }
	if room == Habitacion2 { _roomStruct = global.levelData.level_2 }
	if room == Habitacion3 { _roomStruct = global.levelData.level_3 }
	if room == Habitacion4 { _roomStruct = global.levelData.level_4 }
	
	#endregion
	
	if !is_struct(_roomStruct) { exit; }
	
	#region Load the Data
	
	#region Camera
	
		camera_set_view_size(view_camera[0], _roomStruct.cameraSize[0], _roomStruct.cameraSize[1])
		
	#endregion
	
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
	
	#region Chest
		
		if instance_exists(oChest) { instance_destroy(oChest) }
		for (var i = 0; i < _roomStruct.chestNum; i++) {
			
			var inst = _roomStruct.chestData[i];
			
			instance_create_layer(inst.x, inst.y, "Instances", oChest, inst.var_struct)
			
		}
	
	#endregion
	
	#region NPCs
		
		if instance_exists(oNPC) { instance_destroy(oNPC) }
		for (var i = 0; i < _roomStruct.npcNum; i++) {
			
			var inst = _roomStruct.npcData[i];
			
			instance_create_layer(inst.x, inst.y, "Instances", oNPC, inst.var_struct)
			
		}
	
	#endregion
	
	#region Entities
		
		if instance_exists(oEntity) { instance_destroy(oEntity) }
		for (var i = 0; i < _roomStruct.entitiesNum; i++) {
			
			var inst = _roomStruct.entitiesData[i];
			
			instance_create_layer(inst.x, inst.y, "Entities", inst.object_index, inst.var_struct);
		}
	
	#endregion
	
	#endregion
	
}
	
function SaveGame(fileNum = 0) {
	
	var _saveArray = array_create(0);
	
	rmW = camera_get_view_width(view_camera[0])
	rmH = camera_get_view_height(view_camera[0])
	SaveRoom();
	
	global.statData.save_x = oPlayer.x;
	global.statData.save_y = oPlayer.y;
	global.statData.save_rm = room_get_name(room);
	global.statData.save_inv = ds_list_write(oSystem.inventory);
	global.statData.save_coins = global.coins;
	
	array_push(_saveArray, global.statData);
	
	array_push(_saveArray, global.levelData);
	
	var fileName = "savedata" + string(fileNum) + ".sav";
	var json = json_stringify(_saveArray);
	var bufferVar = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1);
	
	buffer_write(bufferVar, buffer_string, json);
	buffer_save(bufferVar, fileName);
	buffer_delete(bufferVar);
	
	show_message("GUARDANDO: " + fileName)
	
}

function LoadGame(fileNum = 0) {
	
	var fileName = "savedata" + string(fileNum) + ".sav";
	if !file_exists(fileName) exit;
	
	var bufferVar = buffer_load(fileName);
	var json = buffer_read(bufferVar, buffer_string);
	buffer_delete(bufferVar);
	
	var _loadArray = json_parse(json);
	
	global.statData = array_get(_loadArray, 0);
	global.levelData = array_get(_loadArray, 1);
	global.coins = global.statData.save_coins;
	
	var _loadRoom = asset_get_index(global.statData.save_rm);
	room_goto(_loadRoom);
	oSaveLoad.skipRoomSave = true;
	
	if instance_exists(oPlayer) { instance_destroy(oPlayer) }
	instance_create_layer(global.statData.save_x, global.statData.save_y, "Player", oPlayer);
	ds_list_read(oSystem.inventory, global.statData.save_inv);
	
	LoadRoom()
	
	show_message("CARGANDO: " + fileName)
}