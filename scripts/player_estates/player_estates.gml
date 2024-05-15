// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function state_healing()
{
	vel_x = 0
	vel_y = 0
	if (keyboard_check(ord("A")) or keyboard_check(ord("D")) or keyboard_check_pressed(ord("W")) or mouse_check_button_pressed(mb_left))
	{
		state = state_free
	}
	if (keyboard_check(vk_shift))
	{
	 state = state_dash
	}
}
function state_free()
{
	var left = keyboard_check(ord("A"));
	var right = keyboard_check(ord("D"));
	var jump = keyboard_check_pressed(ord("W"));
	var vDirection = ((right - left) * vel_max);
	var grounded = place_meeting(x, y + 1, obj_colision)


	vel_x += lerp( vel_x, vDirection, vel_max)

	if (!grounded) 
	{
		
		vel_y += vGravity
	}
	
	if(jump && grounded)
	{
		vel_y += -velJump 
	}
	
	if(vel_x != 0)
	{
	image_xscale= sign(vel_x);
	}
	
	if(grounded and keyboard_check_pressed(ord("F")))
	{
		state_healing()
	}
	
	if (keyboard_check_pressed(vk_shift))
	{
	 state = state_dash
	}
	
	//swinging
		//oSlash é apenas a colisao da espada e necessita animação
	var endswing = function()
	{
		instance_destroy(oSlash);

	}
	var	timerswing = time_source_create(time_source_game, 10, time_source_units_frames, endswing);

	var swing = mouse_check_button_pressed(mb_left)

	if (swing)
	{
		instance_create_layer(x + 20 * image_xscale, y, "Instances", oSlash);
		time_source_start(timerswing);
	}	
}

function state_dash()
{
	var dashtimer = time_source_create(time_source_game, 20, time_source_units_frames, )
		var dashdistance = x + 50 * image_xscale;
		move_towards_point(x, y, 5 )
		
		state = state_free;
		
		point_distance()
}
/*function knockback()
{

}