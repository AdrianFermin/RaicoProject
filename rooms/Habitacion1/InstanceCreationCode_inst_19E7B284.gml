t_scene_info = [
	[CutsceneMusicStop],
	[CutsceneWait, .5],
	[CutsceneInstanceCreate, 960, 448, "Entities", oBriTest],
	[CutsceneChangeXscale, 0],
	[CutsceneMoveCharacterX, 0, -200, true, false, 2],
	[CutsceneShowText, 
	"[c_blue]PETRONILA:[c_white] [shake]HEEEEEEEEEEEEEEEYYYYYYYY, YA ES HORAAA [/shake][/page]"+
	"[c_red]RAY:[c_white] [shake]YA VOOOOYY[/shake]",
	"[c_blue]PETRONILA:[c_white] [shake]HEEEEEEEEEEEEEEEYYYYYYYY, ITS TIMEEE [/shake][/page]"+
	"[c_red]RAY:[c_white] [shake]ON MY WAAAAAY[/shake]"],
	[CutsceneChangeXscale, 0],
	[CutsceneMoveCharacterX, 0, 256, true, false, 2],
	[CutsceneInstanceDestroy, 0],
	[CutsceneMusicResume]
]