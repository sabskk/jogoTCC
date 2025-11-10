if (position_meeting(mouse_x, mouse_y, self)) {
    click = mouse_check_button_pressed(mb_left);
}

if (click == 1){
	audio_play_sound(sndClick, 1, false);
	
	if (!instance_exists(oFade)) {
            instance_create_layer(0, 0, "Instances", oTransition);
	}
	oFade.fade_state = 1;
	oFade.target_room = Menu;
}