currentTurn = "player";
buttonsCreated = false;
show_debug_message("Jogo iniciado - Turno do jogador");

musicPaused = false;
boss1Defeat = false;
boss2Defeat = false;
boss3Defeat = false;

global.currentLevel = 0;
// 0 = menu; 1 = boss1...

global.volume = 1.0;  // Start at full volume (0.0 to 1.0)
global.volume_step = 0.1;  // How much to change per press (0.1 = 10% increments)
audio_master_gain(global.volume);  // Apply initial volume