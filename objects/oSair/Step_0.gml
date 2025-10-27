image_speed = 0;

if (position_meeting(mouse_x, mouse_y, self)) {
    click = mouse_check_button_pressed(mb_left);
}

if (click == 1){
	audio_play_sound(sndClick, 1, false);
	game_end();
}