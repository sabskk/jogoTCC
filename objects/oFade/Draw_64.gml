// oTransition - Draw GUI Event
if (fade_state > 0) {  // Only draw if fading
    draw_set_alpha(fade_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);  // Full screen black rect
    draw_set_alpha(1);  // Reset alpha for other draws
    draw_set_color(c_white);  // Reset color
}