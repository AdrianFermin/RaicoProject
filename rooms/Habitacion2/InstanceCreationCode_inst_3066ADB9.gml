//Cinematica 02
t_scene_info = [
	[CutsceneMusicStop],
	[CutsceneInstanceCreate, 544, 704, "Entities", oBriTest, {image_xscale: -1}],
	[CutsceneWait, .2],
	[CutsceneShowText, ["A012", "A013"]],
	[CutsceneMoveCharacterY, 0, 60, true, true, 1.5, false],
	[CutsceneShowText, ["A014"]],
	[CutsceneMoveCharacterY, 0, 200, true, true, 1.75, false],
	[CutsceneInstanceDestroy, 0],
	[CutsceneMusicResume]
	
]