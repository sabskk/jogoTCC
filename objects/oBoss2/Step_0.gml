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
		
		if (enemyHP < enemyMaxHP * 0.5 && enemyMP >= 8) {
			enemyMP -= 8;
			healing = irandom_range(20, 30);
			enemyHP = min(enemyMaxHP, enemyHP + healing);
		}
		else if (enemyMP < 15) {
			manaRestore = irandom_range(18, 25);
			enemyMP = min(enemyMaxMP, enemyMP + manaRestore);
		}
		else if (enemyMP >= 6 && enemyMP < 15){
			enemyMP -= 6;
			damage = irandom_range(15, 22);
            oPlayer.playerHP -= damage;
		}
		else if (enemyMP >= 15){
			enemyMP -= 15;
			damage = irandom_range(30, 38);
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