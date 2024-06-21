t_scene_info = [
	[CutsceneMusicStop],
	[CutsceneInstanceCreate, 1888, 608, "Entities", oBriTest], //Inst 0
	[CutsceneChangeXscale, 0],
	[CutsceneSetCameraFocus, 0, 10],
	[CutsceneShowText, "[scale, 1.25][c_blue]PETRONILA:[c_white] Que lento estas hoy, se te olvido"+
	" como usar el [c_gray]Dash[c_white] o que?", 
	"[scale, 1.25][c_blue]PETRONILA:[c_white] You're too slow today, did you forget how to use the [c_gray]Dash[c_white]?"],
	[CutsceneSetCameraFocus, oPlayer, 30],
	[CutsceneWait, .2],
	[CutsceneShowText, "[scale, 1.25][c_red]RAY:[c_white][shake]"+
	" NO TODOS ESTAMOS DESESPERADOOS[/shake][speed, 0.05]. . . [speed, 0.3](Esta chica me estresa...)[/speed]", 
	"[scale, 1.25][c_red]RAY:[c_white][shake] NOT ALL OF US ARE DESPERATE[/shake][speed, 0.05]. . . [speed, 0.3](This girl stress me out...)[/speed]"],
	[CutsceneAddItem, ITEM_BASIC_DASH, 100],
	[CutsceneWait, .1],
	[CutsceneInstanceDestroyAll],
	[CutsceneMusicResume],
]