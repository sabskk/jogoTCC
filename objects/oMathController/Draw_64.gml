// oMathController - Draw GUI Event (Versão Simples)

if (active) {
    // Posição no meio da tela
    var xx = display_get_gui_width() / 2;
    var yy = display_get_gui_height() / 2;
    
    // Configurar texto centralizado
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Desenhar pergunta
    draw_set_color(c_white);
    var question = string(num1) + " " + operation + " " + string(num2) + " = ?";
    draw_text_transformed(xx, yy - 40, question, 1.5, 1.5, 0);
    
    // Desenhar resposta
    draw_set_color(c_white);
    var answer = playerAnswer;
    if (answer == "") answer = "_";
    draw_text(xx, yy + 20, "Resposta: " + answer);
    
    // Instruções
    draw_set_color(c_gray);
    draw_text(xx, yy + 60, "Digite e pressione ENTER");
    
    // Resetar
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}