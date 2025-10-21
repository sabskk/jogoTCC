if (position_meeting(mouse_x, mouse_y, self)) {
    click = mouse_check_button_pressed(mb_left);
}

// Verificar se tem mana suficiente
if (oPlayer.playerMP < 10) {
    click = 0;
	mana = 0;
    image_alpha = 0.5;
} else {
    image_alpha = 1.0;
}

if (click == 1) {
    // Gerar números para divisão
    do {
        result = irandom_range(1, 12); // Resultado entre 1 e 12
        num2 = irandom_range(1, 9);    // Divisor entre 1 e 9
        num1 = result * num2;          // Divisão exata
    } 
	until (num1 <= 99 && num1 >= 1);   // Manter números
    
    show_debug_message($"Gerada conta: {num1} ÷ {num2} = {result}");
    
    // Configurar o controlador de matemática
    oMathController.num1 = num1;
    oMathController.num2 = num2;
    oMathController.result = result;
    oMathController.operation = "%";
    oMathController.currentAction = "strongAttack";
    oMathController.pendingMath = true;
    
    // Resetar click
    click = 0;
}