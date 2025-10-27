draw_self()
draw_set_font(gameFont);
draw_set_halign(fa_center);
draw_set_colour(c_white);

var status_name_y = 30;
var status_hp_y = 55;

draw_text(x, status_name_y, "Lyra");
draw_text(x, status_hp_y, "Hp:"+string(enemyHP)+" | Mp:"+string(enemyMP));