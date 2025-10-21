if (active) {
    // Posições do HUD
    var center_x = display_get_gui_width() / 2;
    var hud_y = display_get_gui_height() - 122; // Start ~120px from bottom
    
    // Centralizar texto
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white); // Pergunta branca
	
	// Desenhar fundo quadrado atrás da pergunta
    var bg_sprite = sQuestion;
	
	// Dimensões da caixa
    var box_width = 300;
    var box_height = 100;
    var box_scale = 1;
    
    // Posição da caixa
    var box_x = center_x;
    var box_y = hud_y + 11;
    
	// Tranformar sprite quadrado em retângulo
    draw_sprite_stretched(bg_sprite, 0, box_x - (box_width / 2), box_y - (box_height / 2), 
                          box_width * box_scale, box_height * box_scale);
    
    // Pergunta (topo da HUD)
    var question = string(num1) + "  " + operation + "  " + string(num2) + "  =  ?";
    draw_text_transformed(center_x, hud_y, question, 1.5, 1.5, 0); // tamanho 1.5x
    
    // Resposta (meio da HUD)
    var answer = (playerAnswer == "") ? "_" : playerAnswer;
    draw_text(center_x, hud_y + 30, "Resposta: " + answer); // 30px pra baixo da pergunta
    
    // Instruções (embaixo da HUD)
    draw_set_color($BD6381);
    draw_text(center_x, hud_y + 85, "Digite e pressione ENTER"); // +70px pra baixo da pergunta
    
    // Reseta alinhamentos (p não afetar outra UI)
    draw_set_font(-1);
	draw_set_alpha(1);
}