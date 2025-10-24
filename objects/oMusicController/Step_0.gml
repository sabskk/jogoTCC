// Volume control with F9/F10
if (keyboard_check_pressed(vk_f9)) {
    global.volume = max(0, global.volume - global.volume_step);
    audio_master_gain(global.volume);
    show_debug_message("Volume lowered to: " + string(global.volume * 100) + "%");
} else if (keyboard_check_pressed(vk_f10)) {
    global.volume = min(1, global.volume + global.volume_step);
    audio_master_gain(global.volume);
    show_debug_message("Volume raised to: " + string(global.volume * 100) + "%");
}