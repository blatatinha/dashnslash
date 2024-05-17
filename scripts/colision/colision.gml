// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function colision()
{
	if (place_meeting(x + vel_x, y, obj_colision))
	{
		while(!place_meeting(x + sign(vel_x) , y, obj_colision))
		{
			x+=sign(vel_x);
		}
		vel_x= 0;
	}
	
	if (place_meeting(x, y + vel_y, obj_colision))
	{
		while(!place_meeting(x, y + sign(vel_y) , obj_colision))
		{
			y+=sign(vel_y);
		}
		vel_y= 0;
	}
}