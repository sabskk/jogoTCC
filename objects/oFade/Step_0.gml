image_alpha = 0;

if (play == 1) {
	if (fade < 1){
		fade += 0.01;
		image_alpha = fade;
	}
	else if (fade == 1) {
		fade -= 0.01;
		image_alpha = fade;
		room_goto(Combate1);
		play = 0;
	}
}
