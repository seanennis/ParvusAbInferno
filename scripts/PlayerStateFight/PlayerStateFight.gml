function PlayerStateFight(){
	//Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk*2, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk*2, inputDirection);
	
	var _collided = PlayerCollision();
	
	PlayerAnimate(hSpeed, vSpeed);
	
	//Change State
	if (keyFight)
		state = PlayerStateFree;
		
	//Camera Shake demo, probably remove
	if(_collided) {
		state = PlayerStateFree;
		ScreenShake(8, 30);
	}
}