if(!virando) image_angle += 0.1;
else if(virando)image_angle -= 0.1;
if(image_angle >= 3) virando = true;
else if(image_angle <= -3) virando = false;

if (oController.currentTurn == "enemy") {
    
    if (actionTimer <= 0) {
        actionTimer = 70;
    }
    
    actionTimer--;
    
    if (actionTimer == 0) {
		
		if (enemyHP < enemyMaxHP * 0.6 && enemyMP >= 10) {
			enemyMP -= 10;
			healing = irandom_range(25, 35);
			enemyHP = min(enemyMaxHP, enemyHP + healing);
		}
		else if (enemyMP < 12) {
			manaRestore = irandom_range(18, 28);
			enemyMP = min(enemyMaxMP, enemyMP + manaRestore);
		}
		else if (enemyMP >= 5 && enemyMP < 14){
			enemyMP -= 5;
			damage = irandom_range(17, 25);
            oPlayer.playerHP -= damage;
		}
		else if (enemyMP >= 14 && enemyMP < 18){
			enemyMP -= 14;
			damage = irandom_range(32, 42);
            oPlayer.playerHP -= damage;
		}
		else if (enemyMP >= 18){
			enemyMP -= 18;
			damage = irandom_range(40, 50);
            oPlayer.playerHP -= damage;
		}
        
        actionTimer = 0;
        
        oController.currentTurn = "player";
		oController.buttonsCreated = false;
    }
}

if (enemyHP <= 0) {
    enemyHP = 0;
	oFade.fade_state = 1;
	oFade.target_room = Cutscene2;
}