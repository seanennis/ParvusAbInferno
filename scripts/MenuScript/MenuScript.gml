function MenuScript(){
	switch(mpos) {
		case 0: {
			global.iGame = instance_create_layer(0,0,layer,oGame);
			break;
		}
		case 1: {
			break;
		}
		case 2: {
			menuType = 1;
			mpos = 0;
			break;
		}
		case 3: {
			game_end();
			break;
		}
		default: break;
	}
}