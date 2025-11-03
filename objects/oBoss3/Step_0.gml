if(!virando) image_angle += 0.05;
else if(virando)image_angle -= 0.05;
if(image_angle >= 3) virando = true;
else if(image_angle <= -3) virando = false;

// Só age quando é o turno do inimigo
if (oController.currentTurn == "enemy") {
    
    // Iniciar timer se ainda não foi iniciado
    if (actionTimer <= 0) {
        actionTimer = 70; // 1 segundo a 60fps
        show_debug_message("=== TURNO DO INIMIGO INICIADO ===");
        show_debug_message($"Timer definido para: {actionTimer}");
    }
    
    // Contagem regressiva
    actionTimer--;
    
    // Quando chegar a 0, executa
    if (actionTimer == 0) {
        show_debug_message("=== EXECUTANDO AÇÃO DO INIMIGO ===");
		
		if (enemyHP < enemyMaxMP * 0.4 && enemyMP >= 10) {
			enemyMP -= 10;
			healing = irandom_range(20, 30);
			enemyHP = min(enemyMaxHP, enemyHP + healing);
			show_debug_message($"Inimigo se curou! +{healing} HP");
		}
		else if (enemyMP < 15) {
			manaRestore = irandom_range(15, 25);
			enemyMP = min(enemyMaxMP, enemyMP + manaRestore);
			show_debug_message($"Mana do inimigo restaurada! +{manaRestore} MP");
		}
		else if (enemyMP >= 10){
			attack = irandom(1);
			
			if (attack == 0){
				enemyMP -= 7;
				damage = irandom_range(13, 20);
                oPlayer.playerHP -= damage;
                show_debug_message($"Você foi atacado! Dano: {damage}");
			}
			else if (attack == 1){
				enemyMP -= 17;
				damage = irandom_range(28, 35);
                oPlayer.playerHP -= damage;
                show_debug_message($"Ataque forte! Dano recebido: {damage}");
			}
		}
        
        // Resetar timer
        actionTimer = 0;
        
        // Passar turno de volta
        oController.currentTurn = "player";
        show_debug_message("=== TURNO PASSOU PARA O JOGADOR ===");
		oController.buttonsCreated = false;
    }
}

// Verificar morte
if (enemyHP <= 0) {
    enemyHP = 0;
    show_debug_message("Inimigo derrotado!");
	oFade.fade_state = 1;  // Start fading out
	oFade.target_room = Cutscene2;  // Set target room
}