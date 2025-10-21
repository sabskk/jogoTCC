if (position_meeting(mouse_x, mouse_y, self)) {
    click = mouse_check_button_pressed(mb_left);
}

if (click == 1){
	oFade.fade = true;
	room_goto(Combate1);
}