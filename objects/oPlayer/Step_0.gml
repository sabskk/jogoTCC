if(!virando) image_angle -= 0.05;
else if(virando)image_angle += 0.05;
if(image_angle <= -3) virando = true;
else if(image_angle >= 3) virando = false;

if (playerHP <= 0) {
	playerHP = 0;
    show_debug_message("Game Over!");
}