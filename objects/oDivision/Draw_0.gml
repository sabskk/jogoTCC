draw_self()
draw_set_font(gameFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

var buttonText;
if (position_meeting(mouse_x, mouse_y, self)) {
	buttonText = "[10 MP]";
}
else {
	buttonText = "At. Forte [%]";
}

// Player sem mana
if (mana == 0){
    draw_set_alpha(0.5);
} else {
    draw_set_alpha(1);
}

draw_text(x, y, buttonText);
draw_set_alpha(1);