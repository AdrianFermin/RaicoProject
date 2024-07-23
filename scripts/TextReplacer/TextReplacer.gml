function TextReplacer(text, arr, type, separator = "?") {
	
	var sys = instance_nearest(x, y, oSystem);
	
	if type == "SPRITES" {
		
		for (var i = 0; i < array_length(arr); i++) {
	
			var pos = string_pos(separator, text);
	
			text = string_delete(text, pos, 1)
	
			var join = "[" + sprite_get_name(variable_instance_get(sys, arr[i])) + "]";
	
			text = string_insert(join, text, pos)
	
		}
		
	} else if type == "NORMAL" {
		
		for (var i = 0; i < array_length(arr); i++) {
	
			var pos = string_pos(separator, text);
	
			text = string_delete(text, pos, 1)
	
			text = string_insert(arr[i], text, pos)
	
		}
		
	}
	
	
	
	return text;
}