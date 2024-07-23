function AddTextCommas(text, delimiter = ";", replacement = ",") {
	
	text = string_split(text, delimiter)
	
	text = string_join_ext(replacement, text);
	
	return text;
}