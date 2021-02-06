function PlayerStateFree(){
	//Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	var _collided = PlayerCollision();
	
	PlayerAnimate();
	
	//Change State
	if (keyFight)
		state = PlayerStateFight;
		
	if (keyActivate) {
		//var _activateX = lengthdir_x(20, direction);
		//var _activateY = lengthdir_y(20, direction);
		//activate = instance_position(x+_activateX, y+_activateY, pEntity);
		activate = instance_nearest(x, y, pEntity);
		
		if(activate != noone && activate.entityActivateScript != -1 && distance_to_object(activate) < 15) {
			// activate the entity
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			
			if(activate.entityNPC) {
				with(activate) {
					direction = point_direction(x,y,other.x,other.y);
					image_index = CARDINAL_DIR;
				}
			}
			
			if(activate.object_index == oOfficeWorker)
				with(activate)
					run = true;
		}
	}
}