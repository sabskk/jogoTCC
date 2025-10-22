// oTransition - Step Event
if (fade_state == 1) {  // Fading out (to black)
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        fade_alpha = 1;  // Clamp to 1
        fade_state = 2;  // Switch to fading in
        room_goto(target_room);  // Change room when fully black
    }
} else if (fade_state == 2) {  // Fading in (from black)
    fade_alpha -= fade_speed;
    if (fade_alpha <= 0) {
        fade_alpha = 0;  // Clamp to 0
        fade_state = 0;  // Idle, transition complete
        target_room = noone;  // Reset
    }
}