t_scene_info = [
	[CutsceneMusicStop],
	[CutsceneWait, .5],
	[CutsceneInstanceCreate, 960, 416, "Entities", oBriTest],
	[CutsceneChangeXscale, 0],
	[CutsceneMoveCharacterX, 0, -256, true, 2, false],
	[CutsceneShowText, 
	"[c_blue]PETRONILA:[c_white] [shake]HEEEEEEEEEEEEEEEYYYYYYYY, YA ES HORAAA DE ENTRENAAAR[/shake][/page]"+
	"[c_red]RAY:[c_white] [shake]YA VOOOOYY[/shake]",
	"[c_blue]PETRONILA:[c_white] [shake]HEEEEEEEEEEEEEEEYYYYYYYY, ITS TIMEEE TO TRAAAAIN[/shake][/page]"+
	"[c_red]RAY:[c_white] [shake]ON MY WAAAAAY[/shake]"],
	[CutsceneChangeXscale, 0],
	[CutsceneMoveCharacterX, 0, 300, true, 2, false],
	[CutsceneInstanceDestroy, 0],
	[CutsceneMusicResume]
]