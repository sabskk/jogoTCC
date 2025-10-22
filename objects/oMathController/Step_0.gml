// Se precisa de matemática, ativar
if (pendingMath) {
    active = true;
    pendingMath = false;
    playerAnswer = ""; // Limpar resposta anterior
    show_debug_message("Matemática ativada! Aguardando resposta...");
}

if (active) {
    // Input de número
    for (var i = 0; i <= 9; i++) {
        if (keyboard_check_pressed(ord(string(i)))) {
            if (string_length(playerAnswer) < 3) {
                playerAnswer += string(i);
            }
        }
    }
    
    // Backspace para apagar
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(playerAnswer) > 0) {
            playerAnswer = string_copy(playerAnswer, 1, string_length(playerAnswer) - 1);
        }
    }
    
    // Enter para confirmar resposta
    if (keyboard_check_pressed(vk_enter) && playerAnswer != "") {
		var playerNum = real(playerAnswer);
		
        if (playerNum == result) {
            actionSuccess = true;
            show_debug_message($"Correto! {num1} {operation} {num2} = {result}");
        } else {
            show_debug_message($"Errado! Era {result}, você respondeu {playerNum}");
        }
        
        // Executar ação baseada no currentAction
        if (currentAction == "attack") {
            // Gasta mana sempre
            oPlayer.playerMP = max(0, oPlayer.playerMP - 5);
            
            if (actionSuccess) {
                damage = irandom_range(12, 20);
                oBoss1.enemyHP -= damage;
                show_debug_message($"Você atacou! Dano: {damage}");
            } else {
                show_debug_message("Você errou e gastou 5 MP!");
            }
        }
        else if (currentAction == "strongAtk") {
            // Gasta mana sempre
            oPlayer.playerMP = max(0, oPlayer.playerMP - 10);
            
            if (actionSuccess) {
                damage = irandom_range(25, 35);
                oBoss1.enemyHP -= damage;
                show_debug_message($"Ataque forte! Dano: {damage}");
            } else {
                show_debug_message("Você errou e gastou 10 MP!");
            }
        }
        else if (currentAction == "heal") {
            // Gasta mana sempre
            oPlayer.playerMP = max(0, oPlayer.playerMP - 8);
            
            if (actionSuccess) {
                healing = irandom_range(20, 30);
                oPlayer.playerHP = min(oPlayer.playerMaxHP, oPlayer.playerHP + healing);
                show_debug_message($"Você se curou! +{healing} HP");
            } else {
                show_debug_message("Você errou e gastou 8 MP!");
            }
        }
        else if (currentAction == "mana") {
            // Restaurar mana não gasta mana
            if (actionSuccess) {
                manaRestore = irandom_range(15, 25);
                oPlayer.playerMP = min(oPlayer.playerMaxMP, oPlayer.playerMP + manaRestore);
                show_debug_message($"Mana restaurada! +{manaRestore} MP");
            } else {
                show_debug_message("Você errou! Nenhuma mana restaurada.");
            }
        }
        
        // Reseta variáveis
        active = false;
        playerAnswer = "";
        currentAction = "";
        num1 = 0;
        num2 = 0;
        result = 0;
        operation = "";
        
        // Passa para o turno do inimigo
        oController.currentTurn = "enemy";
        show_debug_message("Turno passou para o inimigo");
    }
	
}

