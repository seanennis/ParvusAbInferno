function OptionsScript(){
	switch(mpos) {
	case 0: {
		if(window_get_fullscreen())
			window_set_fullscreen(false);
		else
			window_set_fullscreen(true);
		break;
	}
	case 1: {
		menuType = 0;
		break;
	}
	default: break;
	}
}