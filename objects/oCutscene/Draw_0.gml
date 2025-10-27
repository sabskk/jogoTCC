draw_set_font(gameFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var center_x = room_width / 2;
var center_y = room_height / 2;

if (stage == 0) {
	scribble(text1).wrap(550, room_height, false).draw(center_x, center_y, typist);
}
else if (stage == 1) {
	scribble(text2).wrap(550, room_height, false).draw(center_x, center_y, typist);
}
else if (stage == 2) {
	scribble(text3).wrap(550, room_height, false).draw(center_x, center_y, typist);
}
else if (stage == 3) {
	scribble(text4).wrap(550, room_height, false).draw(center_x, center_y, typist);
}
else if (stage == 4) {
	scribble(text5).wrap(550, room_height, false).draw(center_x, center_y, typist);
}
else if (stage == 5) {
	scribble(text6).wrap(550, room_height, false).draw(center_x, center_y, typist);
}

scribble("[gameFont][fa_center][scale,0.7][#515151]Avance com ESPAÇO | Pule com SHIFT").draw(center_x, room_height - 50);

/*draw_set_valign(fa_bottom);
draw_text(center_x, room_height - 50, "Avance com ESPAÇO");*/

draw_self();
draw_set_alpha(1);