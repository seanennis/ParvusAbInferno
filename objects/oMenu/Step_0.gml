/// @desc
move = 0;
move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);

if(menuType == 0)
	curMenu = menu;
else if(menuType == 1) {
	curMenu = options;
}
if(move != 0){
	mpos += move;
	if(mpos < 0)
		mpos = array_length_1d(curMenu) -1;
	if(mpos > array_length_1d(curMenu) - 1)
		mpos = 0;
}

push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space), 0);
if(push == 1 && menuType == 0)
	MenuScript();
else if(push == 1 && menuType == 1)
	OptionsScript();