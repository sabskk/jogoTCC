if (fade_state == 1) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        fade_state = 2;
        room_goto(target_room);
    }
} else if (fade_state == 2) {
    fade_alpha -= fade_speed;
    if (fade_alpha <= 0) {
        fade_alpha = 0;
        fade_state = 0;
        target_room = noone;
    }
}