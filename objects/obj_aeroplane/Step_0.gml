/// @description Controlando o avião
vspeed += vspeed_increase_rate;

if (vspeed > max_vspeed) {
	vspeed = max_vspeed;
}

if(y <= sprite_height/2) {
	y = sprite_height/2;
}

if(y >= room_height + sprite_height/2) {
	room_restart()
}