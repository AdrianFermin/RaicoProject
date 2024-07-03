function ActivateNoView(){
	
	instance_activate_object(input_controller_object)
	instance_activate_object(oCamera)
	instance_activate_object(oTextBox)
	instance_activate_object(oCutsceneTextBox)
	instance_activate_object(oPlayer)
	instance_activate_object(oTransition)
	instance_activate_object(oCutscene)
	instance_activate_object(oSaveLoad)
	instance_activate_object(oTpOrb)
	
	if onCinematic {
		
		if instance_exists(oCutscene) {
			
			var list = oCutscene.sceneInstances;
			var size = array_length(list);
			
			for (var i = 0; i < size; i++) {
				
				var inst = list[i]
				
				instance_activate_region(inst.x - 100, inst.y - 100, 300, 300, true);
				
			}
			
		}
	}
}