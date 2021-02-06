//Get Plaer Input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(ord("E"));
keyAttack = keyboard_check_pressed(mb_left);
keyFight = keyboard_check_released(ord("F"));

inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0 || keyDown - keyUp != 0);

if (!global.gamePaused)
	script_execute(state);
	
depth = -bbox_bottom;