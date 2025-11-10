if(!virando) image_angle += 0.05;
else if(virando)image_angle -= 0.05;
if(image_angle >= 3) virando = true;
else if(image_angle <= -3) virando = false;

if (oController.currentTurn == "enemy") {
    
    if (actionTimer <= 0) {
        actionTimer = 70;
    }
    
    actionTimer--;
    
    if (actionTimer == 0) {
		
		if (enemyHP < enemyMaxHP * 0.4 && enemyMP >= 10) {
			enemyMP -= 10;
			healing = irandom_range(20, 30);
			enemyHP = min(enemyMaxHP, enemyHP + healing);
		}
		else if (enemyMP < 15) {
			manaRestore = irandom_range(15, 25);
			enemyMP = min(enemyMaxMP, enemyMP + manaRestore);
		}
		else if (enemyMP >= 7 && enemyMP < 17){
			enemyMP -= 7;
			damage = irandom_range(13, 20);
            oPlayer.playerHP -= damage;
		}
		else if (enemyMP >= 17){
			enemyMP -= 17;
			damage = irandom_range(28, 35);
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
	oFade.target_room = Cutscene1;
}