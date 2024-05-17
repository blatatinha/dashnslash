/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
	
	
	
if (!invincible && place_meeting(x, y, oOlavo))
{
	
knockback_strength = 10;  
knockback_duration = 20;


	knockback_direction = point_direction(other.x, other.y, x, y);


	knockback_power = knockback_strength;
	knockback_timer = knockback_duration;

	_health -= 1;
	state = knockback
    if (_health <= 0) {
        show_message("Game Over");
        game_restart();
    } else {
        invincible = true;
		image_alpha = 0.5
		var _endinvecibillity = function()
		{
			image_alpha = 1
			invincible = false
			state= state_free;
		}
		var	_timerinvencibility = time_source_create(time_source_game, 60, time_source_units_frames, _endinvecibillity);
		time_source_start(_timerinvencibility)
    }
}