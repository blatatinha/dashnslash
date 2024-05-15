// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function estate_idle()
{
	//findplayer()
	state = estate_following
}
function estate_following()
{
	var vDirection = sign(oPlayer.x - x);
	vel_x += lerp(vel_x, vDirection* vel_max, vel_max)
	
	var grounded = place_meeting(x, y + 1, obj_colision)

	if (!grounded) 
	{
	vel_y += vGravity
	}
}
