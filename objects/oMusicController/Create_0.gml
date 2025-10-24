global.volume = 1.0;  // Start at full volume (0.0 to 1.0)
global.volume_step = 0.1;  // How much to change per press (0.1 = 10% increments)
audio_master_gain(global.volume);  // Apply initial volume