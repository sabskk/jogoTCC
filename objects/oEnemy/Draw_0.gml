draw_self()
draw_set_font(gameFont);
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text(x, 30, "Inimigo");
draw_text(x, 55, "Hp:"+string(enemyHP)+" | Mp:"+string(enemyMP));