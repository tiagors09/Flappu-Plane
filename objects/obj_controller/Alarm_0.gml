mountain_top_y = random_range(
	mountain_top_inital_y, 
	-mountain_offset
);

mountain_bottom_y = random_range(
	mountain_bottom_inital_y,
	mountain_bottom_inital_y + mountain_offset
);

distance_between_mountains_y = abs(
	mountain_top_y - mountain_bottom_y
);

if (distance_between_mountains_y <= room_height+mountain_offset) {
	mountain_bottom_y += mountain_offset;
	mountain_top_y -= mountain_offset;
}


instance_create_layer(
	room_width+mountain_half_height,
	mountain_top_y+(global.level/10),
	instance_layer,
	obj_mountain_top
);

instance_create_layer(
	room_width+mountain_half_height,
	mountain_bottom_y-(global.level/10),
	instance_layer,
	obj_moutain_bottom
);

instance_rate = random_range(1, 2-(global.level/10));

alarm[0] = game_get_speed(gamespeed_fps) * instance_rate;