if (keyboard_check_pressed(vk_f11)){
    window_set_fullscreen(!window_get_fullscreen());
}

if (keyboard_check_pressed(vk_space)) {
	stage += 1;  // Go to next stage
	if (stage >= max_stages) {
		stage = max_stages;  // Ensure it ends properly
	}
}
else if (keyboard_check_pressed(vk_shift)) {
	stage = max_stages;  // Jump to end
}

switch (room){
	case CutsceneStart:
		max_stages = 8;
		
		if (stage >= max_stages) {
			oFade.fade_state = 1;
			oFade.target_room = Combate1;
		}
	break;
	case Cutscene1:
		max_stages = 5;
		
		if (stage >= max_stages) {
			oFade.fade_state = 1;
			oFade.target_room = Combate2;
		}
	break;
	case Cutscene2:
		max_stages = 4;
		
		if (stage >= max_stages) {
			oFade.fade_state = 1;
			oFade.target_room = Cutscene3;
		}
	break;
	case Cutscene3:
		max_stages = 4;
		
		if (stage >= max_stages){
			oFade.fade_state = 1;
			oFade.target_room = Combate3;
		}
	break;
	case CutsceneEnd:
		max_stages = 5;
		
		if (stage >= max_stages) {
			oFade.fade_state = 1;
			oFade.target_room = Combate2;
		}
	break;
}