function PlatformsRequirements() {
	
	variable_instance_set(self, "yspd", 0)
	variable_instance_set(self, "grav", .275)
	variable_instance_set(self, "termVel", 4.25)
	variable_instance_set(self, "myFloorPlat", noone)
	variable_instance_set(self, "downSlopeSemisolid", noone)
	variable_instance_set(self, "forgetSemiSolid", noone)
	variable_instance_set(self, "moveplatXspd", 0)
	variable_instance_set(self, "movePlatMaxYspd", termVel)
	
}