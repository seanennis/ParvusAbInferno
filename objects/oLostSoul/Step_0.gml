if(turn++ == 120) {
	direction = directionArray[random(8)];
	turn = 0;
}

if(direction <= 45 || direction >= 315)
	image_index = 0;
else if(direction <= 225 && direction >= 135)
	image_index = 1;

if (!global.gamePaused) {
	//Movement
	hSpeed = lengthdir_x(0.5, direction);
	vSpeed = lengthdir_y(0.5, direction);

	z = 10 + sin(0.05*curHeight) * 5;
	curHeight++;

	if(PlayerCollision())
		direction -= 90;
}