global.level = 0;

sky_layer_id = layer_get_id("Sky");
floor_layer_id = layer_get_id("Floor");

instance_rate = 1;
mountain_half_height = 108/2;
mountain_offset=spr_aeroplane.sprite_height+30;
mountain_top_inital_y=0.0;
mountain_top_y=0.0;
mountain_bottom_y=0.0;
mountain_bottom_inital_y=room_height;
instance_layer = "Instances";
distance_between_mountains_y = 0.0;
points = 0;

audio_play_sound(
	snd_back_music,
	1,
	true
);

randomize();
// mountain instance alarm
alarm[0] = game_get_speed(gamespeed_fps);
// pointer and level alarm counter
alarm[1] = game_get_speed(gamespeed_fps);