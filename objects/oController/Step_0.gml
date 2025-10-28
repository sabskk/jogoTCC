// Fullscreen
if (keyboard_check_pressed(vk_f11)){
    window_set_fullscreen(!window_get_fullscreen());
}

// Criar botões apenas durante o turno do jogador e sem matemática ativa
if (currentTurn == "player" && !buttonsCreated && !oMathController.active) {
    if (!instance_exists(oAddition)) {
        var addBtn = instance_create_layer(224, 260, "Buttons", oAddition);
    }
	if (!instance_exists(oSubtraction)) {
        var subBtn = instance_create_layer(224, 323, "Buttons", oSubtraction);
    }
    if (!instance_exists(oMultiplication)) {
        var mulBtn = instance_create_layer(416, 260, "Buttons", oMultiplication);
    }
    if (!instance_exists(oDivision)) {
        var divBtn = instance_create_layer(416, 323, "Buttons", oDivision);
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

switch (room){
	case Combate1:
		oAddition.sprite_index = sCombate1;
		oSubtraction.sprite_index = sCombate1;
		oMultiplication.sprite_index = sCombate1;
		oDivision.sprite_index = sCombate1;
		oMenu.sprite_index = sMenu1;
	break;
	case Combate2:
		oAddition.sprite_index = sCombate2;
		oSubtraction.sprite_index = sCombate2;
		oMultiplication.sprite_index = sCombate2;
		oDivision.sprite_index = sCombate2;
		oMenu.sprite_index = sMenu2;
	break;
}