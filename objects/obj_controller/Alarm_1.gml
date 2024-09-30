points++;

if(points%10 == 0) {
	global.level += 1;
	
	audio_play_sound(
		snd_level_up,
		1,
		false
	);
	
	layer_hspeed(
		sky_layer_id, 
		layer_get_hspeed(sky_layer_id)-(global.level/10)
	);
	layer_hspeed(
		floor_layer_id, 
		layer_get_hspeed(floor_layer_id)-(global.level/10)
	);
}

alarm[1] = game_get_speed(gamespeed_fps);