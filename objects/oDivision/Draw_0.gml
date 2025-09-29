draw_self()
draw_set_font(gameFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

if (position_meeting(mouse_x, mouse_y, self)) {
	draw_text(x, y, "10 MP");
}
else {
	draw_text(x, y, "AT.FORTE[%]");
}