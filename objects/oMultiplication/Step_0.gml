if (position_meeting(mouse_x, mouse_y, self)) {
    click = mouse_check_button_pressed(mb_left);
}

// Player com mana cheia
if (oPlayer.playerMP == oPlayer.playerMaxMP) {
    click = 0;
    image_alpha = 0.5;
} else {
    image_alpha = 1.0;
}

if (click == 1) {
	audio_play_sound(sndClick, 1, false);
	
    // Gerar números para multiplicação
    num1 = irandom_range(1, 9);
    num2 = irandom_range(1, 9);
    
    result = num1 * num2;
    show_debug_message($"Gerada conta: {num1} x {num2} = {result}");
    
    // Configurar o controlador de matemática
    oMathController.num1 = num1;
    oMathController.num2 = num2;
    oMathController.result = result;
    oMathController.operation = "x";
    oMathController.currentAction = "mana";
    oMathController.pendingMath = true;
    
    // Resetar click
    click = 0;
}