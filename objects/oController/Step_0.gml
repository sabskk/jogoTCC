// Fullscreen
if (keyboard_check_pressed(vk_f11)){
    window_set_fullscreen(!window_get_fullscreen());
}

// Criar botões apenas durante o turno do jogador e sem matemática ativa
if (currentTurn == "player" && !buttonsCreated && !oMathController.active) {
    if (!instance_exists(oAddition)) {
        var addBtn = instance_create_layer(1, 265, "Buttons", oAddition);
    }
	if (!instance_exists(oSubtraction)) {
        var subBtn = instance_create_layer(230, 320, "Buttons", oSubtraction);
    }
    if (!instance_exists(oMultiplication)) {
        var mulBtn = instance_create_layer(390, 265, "Buttons", oMultiplication);
    }
    if (!instance_exists(oDivision)) {
        var divBtn = instance_create_layer(390, 320, "Buttons", oDivision);
    }
    
    buttonsCreated = true;
}

// Destruir botões quando o oMathController está ativo e jogador resolvendo conta
if (oMathController.active && buttonsCreated) {
    if (instance_exists(oAddition)) instance_destroy(oAddition);
    if (instance_exists(oSubtraction)) instance_destroy(oSubtraction);
    if (instance_exists(oMultiplication)) instance_destroy(oMultiplication);
    if (instance_exists(oDivision)) instance_destroy(oDivision);
    buttonsCreated = false;
}

// Destruir botões quando é o turno do inimigo
if (currentTurn == "enemy" && buttonsCreated) {
    if (instance_exists(oAddition)) instance_destroy(oAddition);
    if (instance_exists(oSubtraction)) instance_destroy(oSubtraction);
    if (instance_exists(oMultiplication)) instance_destroy(oMultiplication);
    if (instance_exists(oDivision)) instance_destroy(oDivision);
	buttonsCreated = false; // Permite recriar os botões
    
    show_debug_message("Botões destruídos - Aguardando ação do inimigo");
}

/*if (room == Combate1) {
	oAddition.sprite_index = sCombate1;
}
else if (room == Combate2) {
	oAddition.sprite_index = sCombate2;
}