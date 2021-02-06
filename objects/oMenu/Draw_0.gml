/// @desc Draw Menu
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fMenuFont);
draw_set_color(c_white);

if(menuType == 0)
	curMenu = menu;
else if(menuType == 1)
	curMenu = options;

for(m = 0; m < array_length_1d(curMenu); m += 1) {
	if(m == mpos) {
		draw_set_color(c_red);
		draw_text(x + space, y + (m * space), string(curMenu[m]));
		draw_set_color(c_white);
	}
	draw_text(x + space, y + (m * space), string(curMenu[m]));
}