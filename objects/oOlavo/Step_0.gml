/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (estate = "idle")
	{
		if(find_player()){
		estate = "following"
		}
	}
if(estate = "following")
{
	var vDirection = sign(oPlayer.x - x);
	vel_x += lerp(vel_x, sign(vDirection), vel_max)
}

var grounded = place_meeting(x, y + 1, obj_colision)

if (!grounded) 
{
	vel_y += vGravity
}