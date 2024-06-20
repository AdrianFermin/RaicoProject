if !opened {
	
	var item;
	
	if content != "COINS" {
		
		item = global.items[content];
		
		AddItem(content, quantity)
		
		var text = string_concat("Has obtenido [c_black]", item[ITEM_DEF_NAME], "[c_green] x", quantity);
		var textENG = string_concat("You got [c_black]", item[ITEM_DEF_ENG_NAME], "[c_green] x", quantity);
		
		TextToView(text, textENG);
		opened = true;
		
	} else {
		
		baseCoins = global.coins + quantity;
		
		alarm[0] = 1;
		
		var text = string_concat("Has obtenido [c_ruby]Rubies", "[c_green] x", quantity);
		var textENG = string_concat("You got [c_ruby]Rubies", "[c_green] x", quantity);
		
		TextToView(text, textENG);
		opened = true;
	}
	
} else {
	
	TextToView("Este cofre esta vacio", "This chest is empty");
	
}

