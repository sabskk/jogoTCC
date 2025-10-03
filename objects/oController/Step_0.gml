// oController - Step Event

// Fullscreen
if (keyboard_check_pressed(vk_f11)){
    window_set_fullscreen(!window_get_fullscreen());
}

// Pausar música
if (keyboard_check_pressed(vk_f10)) {
    if (musicPaused) {
        audio_resume_sound(sndBattleTheme);
        musicPaused = false;
    } else {
        audio_pause_sound(sndBattleTheme);
        musicPaused = true;
    }
}

// Criar botões apenas durante o turno do jogador e quando não há matemática ativa
if (currentTurn == "player" && !buttonsCreated && !oMathController.active) {
    if (!instance_exists(oAddition)) {
        var addBtn = instance_create_layer(230, 265, "Buttons", oAddition);
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

// Destruir botões quando o oMathController está ativo (jogador está resolvendo conta)
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
    buttonsCreated = false;
    
    show_debug_message("Botões destruídos - Aguardando ação do inimigo");
}