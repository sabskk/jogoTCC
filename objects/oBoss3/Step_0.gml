// oEnemy - Step Event

if(!virando) image_angle += 0.05;
else if(virando)image_angle -= 0.05;
if(image_angle >= 3) virando = true;
else if(image_angle <= -3) virando = false;

// Só age quando é o turno do inimigo
if (oController.currentTurn == "enemy") {
    
    // Iniciar timer se ainda não foi iniciado
    if (actionTimer <= 0) {
        actionTimer = 60; // 1 segundo a 60fps
        show_debug_message("=== TURNO DO INIMIGO INICIADO ===");
        show_debug_message($"Timer definido para: {actionTimer}");
    }
    
    // Contar regressivo
    actionTimer--;
    
    // Debug a cada 15 frames
    if (actionTimer % 15 == 0) {
        show_debug_message($"Timer do inimigo: {actionTimer}");
    }
    
    // Quando chegar a 0, executar ação
    if (actionTimer == 0) {
        show_debug_message("=== EXECUTANDO AÇÃO DO INIMIGO ===");
        
        // Ação simples por enquanto - apenas ataque
        var damage = 10;
        oPlayer.playerHP -= damage;
        show_debug_message($"Inimigo atacou! Dano: {damage}");
        show_debug_message($"HP do jogador agora: {oPlayer.playerHP}");
        
        // Resetar timer
        actionTimer = 0;
        
        // Passar turno de volta
        oController.currentTurn = "player";
        show_debug_message("=== TURNO PASSOU PARA O JOGADOR ===");
    }
}

// Verificar morte
if (enemyHP <= 0) {
    enemyHP = 0;
    show_debug_message("Inimigo derrotado!");
}