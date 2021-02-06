lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

// gives number between x1 and x1Target that is lerpProgress as a percentage between them
// text writting accelerates as time goes on
x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if(keyboard_check_pressed(vk_space)) {
	var _messageLength = string_length(text);
	// first press of space finishes text writting, if still writting
	if(textProgress >= _messageLength)
		instance_destroy();
	else
		if(textProgress > 2)  // wait a bit before it can be skipped
			textProgress = _messageLength;
}