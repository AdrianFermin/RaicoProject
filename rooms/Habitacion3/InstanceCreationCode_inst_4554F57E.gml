action = function() {
	
	inst = instance_create_layer(xTo, yTo, "Triggers", object, {
		image_yscale: 15,
		number: 600,
		spd: 10,
		start: 720,
		dir: "OUT"
	})
}