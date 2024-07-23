if !opened {
	
	var item;
	
	if content != "COINS" {
		
		item = global.items[content];
		
		AddItem(content, quantity)
		
		var text = GetCSVText("A003")
		var itemName = oSystem.idioma == IDIOMA_ENG ? item[ITEM_DEF_ENG_NAME] : item[ITEM_DEF_NAME];
		
		text = TextReplacer(text, [itemName, quantity], "NORMAL")
		
		TextToView("A000", text);
		opened = true;
		
	} else {
		
		baseCoins = global.coins + quantity;
		
		alarm[0] = 1;
		
		var text = GetCSVText("A004");
		text = TextReplacer(text, [quantity], "NORMAL")
		
		TextToView("A000", text);
		opened = true;
	}
	
} else {
	
	TextToView("A005");
	
}

