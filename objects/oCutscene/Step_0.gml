// oCutscene - Step Event
timer += 1;  // Increment timer each frame

// Advance stages based on time
if (stage == 0) {
    timer = 0;
} else if (stage == 1) {  // 3 seconds
    timer = 0;
} else if (stage == 2) {  // 4 seconds
    timer = 0;
}

// NEW: Advance stages immediately with SPACE (skip/continue)
if (skip_allowed && keyboard_check_pressed(vk_space)) {
    stage += 1;  // Go to next stage
    if (stage >= max_stages) {
        stage = max_stages;  // Ensure it ends properly
    }
}

// Skip with SPACE (if allowed)
if (skip_allowed && keyboard_check_pressed(vk_shift)) {
    stage = max_stages;  // Jump to end
}

// End cutscene and transition
if (stage >= max_stages) {
	oFade.fade_state = 1;  // Start fading out
	oFade.target_room = Combate1;  // Set target room
    instance_destroy();  // Clean up
}