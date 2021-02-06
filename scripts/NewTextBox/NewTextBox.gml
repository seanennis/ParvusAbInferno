function NewTextBox(curText, index){
	var _obj;
	if(instance_exists(oText))
		_obj = oTextQueued;
	else
		_obj = oText;
	with(instance_create_layer(0, 0, "Instances", _obj)) {
		text = curText;
		if(instance_exists(other))
			originInstance = other.id
		else
			originInstance = noone;
	}
	
	with(oPlayer) {
		if(state != PlayerStateLock) {
			lastState = state;
			state = PlayerStateLock;
		}
	}
}