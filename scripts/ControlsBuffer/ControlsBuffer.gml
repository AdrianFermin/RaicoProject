function ControlsBuffer(){
	#region Buffer Jump
	if input_check_pressed("jump"){
		jumpKeyBufferTimer = jumpBufferTime;
	}
	
	if jumpKeyBufferTimer > 0 {
		jumpKeyBuffered = true;
		jumpKeyBufferTimer--;
	} else {
		jumpKeyBuffered = false;
	}
	
	#endregion
	
	#region Buffer Directions
	if input_check("right") && input_check("up"){
		directionBuffered = "RU";
	} else if input_check("right") && input_check("down"){
		directionBuffered = "RD";
	} else if input_check("left") && input_check("up"){
		directionBuffered = "LU";
	} else if input_check("left") && input_check("down"){
		directionBuffered = "LD";
	} else if input_check("right"){
		directionBuffered = "R";
	} else if input_check("left"){
		directionBuffered = "L";
	} else if input_check("up"){
		directionBuffered = "U";
	} else if input_check("down"){
		directionBuffered = "D";
	}
	
	#endregion
}