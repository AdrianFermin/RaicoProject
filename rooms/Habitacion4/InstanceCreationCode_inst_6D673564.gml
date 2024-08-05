//Cinematica 04
t_scene_info = [
	[CutsceneInstanceCreate, 1952, 1568, "Entities", oNPC, {
			image_xscale: -1,
			spr: sBriTestIdle,
			baseText: "A005",
			extraText: ["A015", "A010"],
			spd: 10,
		}
	], //Inst 0
	[CutsceneInstanceCreate, 1824, 1568, "Entities", oNPC, {
			spr: sViejoTestIdle,
			spd: 8,
		}
	], //Inst 1
	[CutsceneSetCameraFocus, 0, 7.5],
	[CutsceneWait, 2],
	[CutsceneAddItem, ITEM_WALL_BOOTS, 100]
]