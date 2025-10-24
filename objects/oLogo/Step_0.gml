if(!flutuando) y += 0.05;
else if(flutuando) y -= 0.05;
if(y >= 105) flutuando = true;
else if(y <= 97) flutuando = false;

if(!virando) image_angle += 0.01;
else if(virando)image_angle -= 0.01;
if(image_angle >= 1.5) virando = true;
else if(image_angle <= -1.5) virando = false;

// Fullscreen
if (keyboard_check_pressed(vk_f11)){
    window_set_fullscreen(!window_get_fullscreen());
}