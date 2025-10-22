// Fullscreen
if (keyboard_check_pressed(vk_f11)){
    window_set_fullscreen(!window_get_fullscreen());
}

// Volume control with F9/F10
if (keyboard_check_pressed(vk_f9)) {
    global.volume = max(0, global.volume - global.volume_step);
    audio_master_gain(global.volume);
    show_debug_message("Volume lowered to: " + string(global.volume * 100) + "%");
} else if (keyboard_check_pressed(vk_f10)) {
    global.volume = min(1, global.volume + global.volume_step);
    audio_master_gain(global.volume);
    show_debug_message("Volume raised to: " + string(global.volume * 100) + "%");
}

// Criar botões apenas durante o turno do jogador e sem matemática ativa
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
    buttonsCreated = false;
    
    show_debug_message("Botões destruídos - Aguardando ação do inimigo");
}