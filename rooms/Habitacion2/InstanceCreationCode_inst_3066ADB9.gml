//Cinematica 02
t_scene_info = [
	[CutsceneMusicStop],
	[CutsceneInstanceCreate, 256, 704, "Entities", oBriTest],
	[CutsceneMoveCharacterX, 0, 288, true, 1.5, false],
	[CutsceneWait, .2],
	[CutsceneChangeXscale, 0],
	[CutsceneShowText, ["A012", "A013"]],
	[CutsceneMoveCharacterY, 0, 60, true, true, 1.5, false],
	[CutsceneShowText, ["A014"]],
	[CutsceneMoveCharacterY, 0, 200, true, true, 1.75, false],
	[CutsceneInstanceDestroy, 0],
	[CutsceneMusicResume]
	
]