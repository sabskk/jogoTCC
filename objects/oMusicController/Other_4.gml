// Tocar música (TEMPORÁRIO)
if (room == Menu) {
	audio_play_sound(sndMenu, 0, true);
}
else if (room == Combate1){
	audio_stop_sound(sndMenu);
	audio_play_sound(sndBattle1, 0, true);
}