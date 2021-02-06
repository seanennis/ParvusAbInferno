///@desc Set to run once the player has spoken to them

if(run && oPlayer.state != PlayerStateLock) {
	if(directionTime++ >= 60) {
		var _hDir = random_range(-1, 1);
		var _vDir = random_range(-1, 1);
		inputDirection = point_direction(0,0, _hDir, _vDir);
		inputMagnitude = (_hDir != 0 || _hDir != 0);
		directionTime = 0;
	}

	if (!global.gamePaused) {
		if(turn++ == 120) {
			direction = directionArray[random(8)];
			turn = 0;
		}

		image_index = CARDINAL_DIR;

		//Movement
		hSpeed = lengthdir_x(1, direction);
		vSpeed = lengthdir_y(1, direction);

		if(PlayerCollision())
			direction -= 90;
	}
}