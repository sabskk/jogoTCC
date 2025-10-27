draw_set_font(gameFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var center_x = room_width / 2;
var center_y = room_height / 2;

if (stage == 1) {
    draw_text(center_x, center_y, text1);  // First text
}
else if (stage == 2) {
    draw_text(center_x, center_y, text2);  // Second text below image
}

// Optional: Skip instruction
if (skip_allowed) {
    draw_set_valign(fa_bottom);
    draw_text(center_x, room_height - 50, "Press SPACE to Skip");
}

draw_self();
draw_set_alpha(1);