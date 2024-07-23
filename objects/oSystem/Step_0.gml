ControlControllerButtons()

if room != initRoom {
	DeactivateNoView()
}

if keyboard_check_pressed(vk_tab) {
	
	idioma = idioma == IDIOMA_ENG ? IDIOMA_ESP : IDIOMA_ENG;
}

if keyboard_check_pressed(vk_escape) {
	window_set_fullscreen(!window_get_fullscreen())
}
