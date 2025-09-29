// oMultiplication - Step Event

if (position_meeting(mouse_x, mouse_y, self)) {
    click = mouse_check_button_pressed(mb_left);
}

// Multiplicação não gasta mana (restaura mana)
image_alpha = 1.0;

if (click == 1) {
    // Gerar números para multiplicação (resultado até 81)
    num1 = irandom_range(1, 9);
    num2 = irandom_range(1, 9);
    
    result = num1 * num2;
    show_debug_message($"Gerada conta: {num1} x {num2} = {result}");
    
    // Configurar o controlador de matemática
    oMathController.num1 = num1;
    oMathController.num2 = num2;
    oMathController.result = result;
    oMathController.operation = "*";
    oMathController.currentAction = "restore_mana";
    oMathController.pendingMath = true;
    
    // Resetar click para evitar múltiplos cliques
    click = 0;
}