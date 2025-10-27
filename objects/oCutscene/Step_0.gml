if (keyboard_check_pressed(vk_space)) {
    stage += 1;  // Go to next stage
    if (stage >= max_stages) {
        stage = max_stages;  // Ensure it ends properly
    }
}

// Skip with SPACE (if allowed)
if (keyboard_check_pressed(vk_shift)) {
    stage = max_stages;  // Jump to end
}

// End cutscene and transition
if (stage >= max_stages) {
	oFade.fade_state = 1;  // Start fading out
	oFade.target_room = Combate1;  // Set target room
}