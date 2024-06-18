t_scene_info = [
	[CutsceneMusicStop],
	[CutsceneInstanceCreate, 256, 704, "Entities", oBriTest],
	[CutsceneMoveCharacterX, 0, 288, true, 1.5, false],
	[CutsceneWait, .2],
	[CutsceneChangeXscale, 0],
	[CutsceneShowText, "[scale, 1.25][c_blue]PETRONILA:[c_white] Vamos, el viejo nos esta esperando"+
	" y ya sabes como es su paciencia.[/page][c_red] RAY:[c_white] Si, si, ya voy", 
	"[scale, 1.25][c_blue]PETRONILA:[c_white] Let's go, old man is waiting for us,"+
	" and you know how patient he is.[/page][c_red] RAY:[c_white] Okay, okay, I'm on my way"],
	[CutsceneMoveCharacterY, 0, 60, true, true, 1.5, false],
	[CutsceneShowText, "[scale, 1.25][c_blue]PETRONILA:[c_white] Rapido, sigueme",
	"[scale, 1.25][c_blue]PETRONILA:[c_white] Move it, follow me"],
	[CutsceneMoveCharacterY, 0, 200, true, true, 1.75, false],
	[CutsceneInstanceDestroy, 0],
	[CutsceneMusicResume]
	
]