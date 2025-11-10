switch (room){
	case Combate1:
		if(!virando) image_angle -= 0.05;
		else if(virando)image_angle += 0.05;
	break;
	case Combate2:
		if(!virando) image_angle -= 0.1;
		else if(virando)image_angle += 0.1;
	break;
	case Combate3:
		if(!virando) image_angle -= 0.1;
		else if(virando)image_angle += 0.1;
	break;
}
if(image_angle <= -3) virando = true;
else if(image_angle >= 3) virando = false;

if (playerHP <= 0) {
	playerHP = 0;
	oFade.fade_state = 1;
	oFade.target_room = Lose;
}

if (room != Lose) {
    global.roomName = room;
}