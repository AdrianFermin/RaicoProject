if look {
	
	if oPlayer.x < x { image_xscale = -1 }
	else { image_xscale = 1 }
}

if actionType == "CUSTOM" && !used{
	customFn();
	used = true;
	exit;
}

if !used {
	
	TextToView(baseText)
	used = true;
	exit;
	
}

TextToView(extraText[i])
i = i == array_length(extraText) - 1 ? 0 : i+1;