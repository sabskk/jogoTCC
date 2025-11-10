switch (room){
	case Menu:
		audio_stop_all();
		audio_play_sound(sndMenu, 0, true);
	break;
	case CutsceneStart:
		audio_stop_all();
		audio_play_sound(sndCutsceneStart, 0, true);
	break;
	case Tutorial:
		audio_stop_all();
		audio_play_sound(sndTutorial, 0, true);
	break;
	case Combate1:
		audio_stop_all();
		audio_play_sound(sndBattle1, 0, true);
	break;
	case Cutscene1:
		audio_stop_all();
		audio_play_sound(sndCutscene1, 0, true);
	break;
	case Combate2:
		audio_stop_all();
		audio_play_sound(sndBattle2, 0, true);
	break;
	case Cutscene2:
		audio_stop_all();
		audio_play_sound(sndCutscene2, 0, true);
	break;
	case Cutscene3:
		audio_stop_all();
		audio_play_sound(sndCutscene3, 0, true);
	break;
	case Combate3:
		audio_stop_all();
		audio_play_sound(sndBattle3, 0, true);
	break;
	case CutsceneEnd:
		audio_stop_all();
		audio_play_sound(sndCutsceneEnd, 0, true);
	break;
	case Lose:
		audio_stop_all();
		audio_play_sound(sndLose, 0, false);
	break;
}