//Cinematica 01
t_scene_info = [
	[CutsceneMusicStop],
	[CutsceneWait, .5],
	[CutsceneInstanceCreate, 960, 416, "Entities", oBriTest],
	[CutsceneChangeXscale, 0],
	[CutsceneMoveCharacterX, 0, -256, true, 2, false],
	[CutsceneShowText, ["A009", "A010"]],
	[CutsceneChangeXscale, 0],
	[CutsceneMoveCharacterX, 0, 300, true, 2, false],
	[CutsceneInstanceDestroy, 0],
	[CutsceneMusicResume]
]