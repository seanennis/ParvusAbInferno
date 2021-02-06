/// @desc Draw pause menu
if(global.gamePaused) {
	cam = view_camera[0];
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_halign(fa_center);
	draw_set_font(fMenuFont);
	draw_set_color(c_red);
	draw_set_alpha(1);
	draw_text(oCamera.x,oCamera.y,"Game Paused");
	draw_set_color(c_black);
}
