function GetCSVText(code) {
	
	var pos = ds_grid_value_y(global.text_csv, 0, 0, 0, 
	ds_grid_height(global.text_csv), code);
	
	var text = ds_grid_get(global.text_csv, oSystem.idioma, pos);
	
	text = AddTextCommas(text);
	
	return text;
	
}

function GetCSVSprites(code) {
	
	var pos = ds_grid_value_y(global.text_csv, 0, 0, 0, 
	ds_grid_height(global.text_csv), code);
	
	var text = ds_grid_get(global.text_csv, 2, pos);
	
	var arr = string_split(text, ";")
	
	return arr;
}