if (keyboard_check(vk_f9)) {
    global.volume = max(0, global.volume - global.volume_step/5);
    audio_master_gain(global.volume);
    show_debug_message("Volume lowered to: " + string(global.volume * 100) + "%");
} else if (keyboard_check(vk_f10)) {
    global.volume = min(1, global.volume + global.volume_step/5);
    audio_master_gain(global.volume);
    show_debug_message("Volume raised to: " + string(global.volume * 100) + "%");
}