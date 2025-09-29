// oAddition - Step Event

if (position_meeting(mouse_x, mouse_y, self)) {
    click = mouse_check_button_pressed(mb_left);
}

// Verificar se tem mana suficiente
if (oPlayer.playerMP < 8) {
    click = 0;
    image_alpha = 0.5;
} else {
    image_alpha = 1.0;
}

if (click == 1) {
    // Gerar números para adição (resultado entre 1 e 18)
    num1 = irandom_range(1, 9);
    num2 = irandom_range(1, 9);
    
    result = num1 + num2;
    show_debug_message($"Gerada conta: {num1} + {num2} = {result}");
    
    // Configurar o controlador de matemática
    oMathController.num1 = num1;
    oMathController.num2 = num2;
    oMathController.result = result;
    oMathController.operation = "+";
    oMathController.currentAction = "heal";
    oMathController.pendingMath = true;
    
    // Resetar click para evitar múltiplos cliques
    click = 0;
}