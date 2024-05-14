// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function find_player(){
	if(!instance_exists(oFindPlayer))
	{
		instance_create_layer(oOlavo.x, oOlavo.y, "instances", oFindPlayer)
	}
	
	if(oFindPlayer.detectPlayer = true)
	{
		if (instance_exists(oFindPlayer))
		{
		instance_destroy(oFindPlayer)
		}
		return true;
		
	}
	return false;
}