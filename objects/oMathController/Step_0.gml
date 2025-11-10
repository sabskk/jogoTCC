if (pendingMath) {
    active = true;
    pendingMath = false;
    playerAnswer = "";
}

var boss;
switch (room){
	case Combate1:
		boss = oBoss1;
	break;
	case Combate2:
		boss = oBoss2;
	break;
	case Combate3:
		boss = oBoss3;
	break;
}

if (active) {
    for (var i = 0; i <= 9; i++) {
        if (keyboard_check_pressed(ord(string(i)))) {
            if (string_length(playerAnswer) < 3) {
                playerAnswer += string(i);
            }
        }
    }
    
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(playerAnswer) > 0) {
            playerAnswer = string_copy(playerAnswer, 1, string_length(playerAnswer) - 1);
        }
    }
    
    if (keyboard_check_pressed(vk_enter) && playerAnswer != "") {
		var playerNum = real(playerAnswer);
		
        if (playerNum == result) {
            actionSuccess = true;
        }
		else {
            actionSuccess = false;
        }
        
        if (currentAction == "attack") {
            oPlayer.playerMP = max(0, oPlayer.playerMP - 5);
            
            if (actionSuccess) {
                damage = irandom_range(10, 20);
                boss.enemyHP -= damage;
            }
        }
        else if (currentAction == "strongAtk") {
            oPlayer.playerMP = max(0, oPlayer.playerMP - 15);
            
            if (actionSuccess) {
                damage = irandom_range(25, 35);
                boss.enemyHP -= damage;
            }
        }
        else if (currentAction == "heal") {
			oPlayer.playerMP = max(0, oPlayer.playerMP - 8);
            
            if (actionSuccess) {
				healing = irandom_range(20, 30);
                oPlayer.playerHP = min(oPlayer.playerMaxHP, oPlayer.playerHP + healing);
            }
        }
        else if (currentAction == "mana") {
            if (actionSuccess) {
                manaRestore = irandom_range(10, 15);
                oPlayer.playerMP = min(oPlayer.playerMaxMP, oPlayer.playerMP + manaRestore);
            }
        }
        
        active = false;
		actionSuccess = false;
        playerAnswer = "";
        currentAction = "";
        num1 = 0;
        num2 = 0;
        result = 0;
        operation = "";
        
        oController.currentTurn = "enemy";
    }
}

