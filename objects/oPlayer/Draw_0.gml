draw_self()
draw_set_font(gameFont);
draw_set_halign(fa_center);
draw_set_colour(c_white);

var status_name_y = 15;
var status_hp_y = status_name_y + 25;

draw_text(x, status_name_y, "Willow");
draw_text(x, status_hp_y, "Hp:"+string(playerHP)+" | Mp:"+string(playerMP));

