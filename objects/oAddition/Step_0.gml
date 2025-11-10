if (position_meeting(mouse_x, mouse_y, self)) {
    click = mouse_check_button_pressed(mb_left);
}

if (oPlayer.playerHP == oPlayer.playerMaxHP) {
    click = 0;
    image_alpha = 0.5;
} else if (oPlayer.playerMP < 8) {
    click = 0;
	mana = 0;
    image_alpha = 0.5;
} else {
    image_alpha = 1.0;
}

if (click == 1) {
	audio_play_sound(sndClick, 1, false);
	
    num1 = irandom_range(1, 9);
    num2 = irandom_range(1, 9);
    
    result = num1 + num2;
    
    oMathController.num1 = num1;
    oMathController.num2 = num2;
    oMathController.result = result;
    oMathController.operation = "+";
    oMathController.currentAction = "heal";
    oMathController.pendingMath = true;
    
    click = 0;
}

switch (room){
	case Combate1:
		sprite_index = sCombate1;
	break;
	case Combate2:
		sprite_index = sCombate2;
	break;
	case Combate3:
		sprite_index = sCombate3;
	break;
}