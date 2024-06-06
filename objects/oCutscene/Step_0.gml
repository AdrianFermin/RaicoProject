var current_scene = scene_info[scene];

var len = array_length(current_scene) - 1;

if len != 0 {
	script_execute_ext(current_scene[0], current_scene, 1);
} else {
	script_execute(current_scene[0])
}
