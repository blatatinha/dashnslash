/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var detection

var endDetection = function()
	{
	oOlavo.image_xscale = image_xscale * -1
	instance_destroy();
	}
detection = time_source_create(time_source_game, 200, time_source_units_frames, endDetection)
time_source_start(detection);

if place_meeting(x, y, oPlayer){
detectPlayer = true;
}