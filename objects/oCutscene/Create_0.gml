stage = 0;  // Current part of cutscene (0 = start, 1 = text1, 2 = image, etc.)
max_stages = 0;  // Total stages (adjust per cutscene)
//skip_allowed = true;

typist = scribble_typist();
typist.in(0.5, 0);

switch (room){
	case CutsceneStart:
		text1 = "[gameFont][fa_center][fa_middle]País de Rune Radiance, ano desconhecido...";
		text2 = "[gameFont][fa_center][fa_middle]Em [wave]Eldora[/wave], uma cidade conhecida por seu brilho mágico, acontece o [pulse]Torneio da Radiância.[/pulse]";
		text3 = "[gameFont][fa_center][fa_middle]Uma vez por ano, todos os bruxos e bruxas se reúnem para provar quem é o mais sábio, criativo e poderoso.";
		text4 = "[gameFont][fa_center][fa_middle]Para isso, utilizam de sua [wave]Mana[/wave](MP) para criar seus [wave]feitiços.[/wave] Sem ela, não existe magia.";
		text5 = "[gameFont][fa_center][fa_middle]Vence o torneio quem for o bruxo com maior força de [wave]Vontade[/wave](VP) ao fim de suas batalhas.";
		text6 = "[gameFont][fa_center][fa_middle]Entre a multidão, está [wave]Willow[/wave], uma jovem bruxa curiosa, cheia de ideias, mas sem fama. Ela se inscreve sem grandes expectativas, só quer testar o que aprendeu.";
		text7 = "[gameFont][fa_center][fa_middle]Enquanto observa os outros competidores, Willow descobre algo inesperado: sua melhor amiga, [wave]Lyra[/wave], também se inscreveu.";
		text8 = "[gameFont][fa_center][fa_middle]As duas riem da coincidência, até perceberem que vão se [shake]enfrentar.[/shake]";
	break;
	case Cutscene1:
		text1 = "[gameFont][fa_center][fa_middle]O público [shake]vibra.[/shake] Willow e Lyra se encaram, divididas entre a [wave]amizade[/wave] e a [wave]competição.[/wave]";
		text2 = "[gameFont][fa_center][fa_middle]A luta é intensa, cheia de truques criativos e risadas no meio das magias. Mas no fim, Willow [wave]vence[/wave] e Lyra sorri, [wave]orgulhosa.[/wave]";
		text3 = "[gameFont][fa_center][fa_middle]A próxima oponente é [wave]Mira[/wave], uma bruxa mais velha, calma e gentil, que saúda Willow com respeito.";
		text4 = "[gameFont][fa_center][fa_middle]“Ouvi falar de você,” Mira comenta. “Que sorte enfrentar alguém tão promissor.”";
		text5 = "[gameFont][fa_center][fa_middle]“Espero que eu não decepcione,” Willow pontua, preparada para lutar.";
	break;
}