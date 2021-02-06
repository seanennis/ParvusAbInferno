/// @desc Draw Textbox
NineSliceBoxStretched(sTextBox,x1,y1,x2,y2,0);
draw_set_font(fMenuFont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

var _print = string_copy(text, 1, textProgress);
draw_text((x1+x2) / 2, y1+8, _print);
