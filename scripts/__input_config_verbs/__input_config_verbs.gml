// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

function __input_config_verbs()
{
    return {
        keyboard_and_mouse:
        {
			right:	input_binding_key(vk_right),
			left:	input_binding_key(vk_left),
			up:		input_binding_key(vk_up),
			down:	input_binding_key(vk_down),
			
			jump:	input_binding_key(vk_space),
			dash:	input_binding_key(vk_shift),
			attack:	input_binding_key(ord("X")),
			bow:	input_binding_key(ord("S")),
			bomb:	input_binding_key(ord("A")),
			
			interact: input_binding_key(vk_enter),
			accept:	input_binding_key(vk_space),
			cancel:	input_binding_key(vk_shift),
        },
        
        gamepad:
        {
			right:	input_binding_gamepad_axis(gp_axislh, false),
			left:	input_binding_gamepad_axis(gp_axislh, true),
			up:		input_binding_gamepad_axis(gp_axislv, true),
			down:	input_binding_gamepad_axis(gp_axislv, false),
			
			jump:	input_binding_gamepad_button(gp_face1),
			dash:	input_binding_gamepad_button(gp_face2),
			attack:	input_binding_gamepad_button(gp_face3),
			bow:	input_binding_gamepad_button(gp_shoulderrb),
			bomb:	input_binding_gamepad_button(gp_shoulderlb),
			
			interact: input_binding_gamepad_button(gp_face4),
			accept:	input_binding_gamepad_button(gp_face1),
			cancel:	input_binding_gamepad_button(gp_face2),
			acceptSwitch:	input_binding_gamepad_button(gp_face2),
			cancelSwitch:	input_binding_gamepad_button(gp_face1),
        },
        
        touch:
        {
            
        }
    };
}