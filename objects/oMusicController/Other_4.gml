switch (room){
	case Menu:
		audio_stop_all();
		audio_play_sound(sndMenu, 0, true);
	break;
	case CutsceneStart:
		audio_stop_all();
		audio_play_sound(sndCutsceneStart, 0, true);
	break;
	case Combate1:
		audio_stop_all();
		audio_play_sound(sndBattle1, 0, true);
	break;
}