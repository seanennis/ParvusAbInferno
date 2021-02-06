function PlayerAnimate(){
	//Change where player is facing
	if(hSpeed > 0 && vSpeed == 0)
		image_index = 0;
	else if(hSpeed < 0 && vSpeed == 0)
		image_index = 2;
	else if(vSpeed < 0 && hSpeed == 0)
		image_index = 1;
	else if(vSpeed > 0 && hSpeed == 0)
		image_index = 3;
}