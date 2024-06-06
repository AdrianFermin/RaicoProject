scene_info = -1;
scene = 0;

timer = 0;

oSystem.onCinematic = true;

scene_info = [
	[CutsceneWait, 1],
	[CutsceneMoveCharacterX, oPlayer, 256, true, false, oPlayer.moveSpd],
	[CutsceneShowText, "Pa donde yo iba?"],
	[CutsceneChangeXscale, oPlayer],
	[CutsceneWait, 1],
	[CutsceneChangeXscale, oPlayer],
	[CutsceneWait, .5],
	[CutsceneShowText, "Ah si, pa donde Narciso..."],
	[CutsceneMoveCharacterX, oPlayer, 300, true, false, oPlayer.moveSpd]
]

x_dest = -1;
y_dest = -1;
