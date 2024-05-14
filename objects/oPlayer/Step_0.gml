/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var endswing = function()
	{
	instance_destroy(oSlash);
	}
var	timerswing = time_source_create(time_source_game, 10, time_source_units_frames, endswing);

var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var jump = keyboard_check_pressed(ord("W"));
var vDirection = ((right - left) * vel_max);
var grounded = place_meeting(x, y + 1, obj_colision)
var swing = mouse_check_button_pressed(mb_left)

vel_x += lerp(vel_x, vDirection * vel_max, vel_max)


if (!grounded) 
{
	vel_y += vGravity
}

if(jump && grounded)
{
	vel_y += -velJump * vel_max
}
if(vel_x != 0)
{
image_xscale= sign(vel_x);
}

if (swing )
{
instance_create_layer(x + 20 * image_xscale, y, "Instances", oSlash);
time_source_start(timerswing);
}
