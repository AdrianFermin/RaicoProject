function CheckFallCollision(){
	//Verificar solid and semisolid platforms below
	var _clampYspd = max(0, yspd);
	var _list = ds_list_create();
	var _array = array_create(0);
	array_push(_array, oWall, oSemiSolidWall)
	
	var _listSize = instance_place_list(x, y+1 + _clampYspd + movePlatMaxYspd, _array, _list, false);
	
	//Verificar las colisiones
	for (var i = 0; i < _listSize; i++) {
		
		var _listInst = _list[| i];
		
		if _listInst != forgetSemiSolid
		&& (_listInst.yspd <= yspd || instance_exists(myFloorPlat))
		&& (_listInst.yspd > 0 || place_meeting(x, y + 1 + _clampYspd, _listInst)) {
			
			if _listInst.object_index == oWall || object_is_ancestor(_listInst.object_index, oWall)
			|| floor(bbox_bottom) <= ceil(_listInst.bbox_top - _listInst.yspd) {
			
				if !instance_exists(myFloorPlat)
				|| _listInst.bbox_top + _listInst.yspd < myFloorPlat.bbox_top + myFloorPlat.yspd
				|| _listInst.bbox_top + _listInst.yspd < bbox_bottom {
					myFloorPlat = _listInst;
				}
			}
		}
		
	}
	
	ds_list_destroy(_list);
	
	if instance_exists(downSlopeSemisolid) { myFloorPlat = downSlopeSemisolid; }
	
	if instance_exists(myFloorPlat) && !place_meeting(x, y + movePlatMaxYspd, myFloorPlat) {
		myFloorPlat = noone;
	}
	
	if instance_exists(myFloorPlat) {
		
		var _subPixel = .5; //Variable que define la distancia entre pixeles
		while !place_meeting(x, y + _subPixel, myFloorPlat) && !place_meeting(x, y, oWall) { y += _subPixel; }
		
		if myFloorPlat.object_index == oSemiSolidWall || object_is_ancestor(myFloorPlat.object_index, oSemiSolidWall) {
			while place_meeting(x,y, myFloorPlat) { y -= _subPixel; }
		}
		
		y = floor(y);
		
		yspd = 0;
	}
	
	//Caer de la plataforma
	if input_check("down") && input_check_pressed("jump") {
		
		if instance_exists(myFloorPlat)
		&& (myFloorPlat.object_index == oSemiSolidWall || object_is_ancestor(myFloorPlat.object_index, oSemiSolidWall)) {
			
			//Verificar si puedo bajar
			var _yCheck = y + max( 1, myFloorPlat.yspd + 1);
			if !place_meeting(x, _yCheck, oWall) {
				
				y += 1;
				
				if myFloorPlat.yspd > 0 { yspd = myFloorPlat.yspd; }
				
				//Olvidar la plataforma
				forgetSemiSolid = myFloorPlat;
				
				myFloorPlat = noone;
			}
		}
	}
	
	
}