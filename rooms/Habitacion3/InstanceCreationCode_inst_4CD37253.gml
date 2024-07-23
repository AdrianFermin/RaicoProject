//Cinematica 03
t_scene_info = [
	[CutsceneMusicStop],
	[CutsceneInstanceCreate, 1888, 608, "Entities", oBriTest], //Inst 0
	[CutsceneChangeXscale, 0],
	[CutsceneSetCameraFocus, 0, 10],
	[CutsceneShowText, ["A017"]],
	[CutsceneSetCameraFocus, oPlayer, 30],
	[CutsceneWait, .2],
	[CutsceneShowText, ["A018"]],
	[CutsceneAddItem, ITEM_BASIC_DASH, 100],
	[CutsceneWait, .1],
	[CutsceneInstanceDestroyAll],
	[CutsceneMusicResume],
]