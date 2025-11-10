stage = 0;
max_stages = 0;

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
	case Tutorial:
		text1 = "[gameFont][fa_center][fa_middle][wave]- Tutorial -[/wave]";
		text2 = "[gameFont][fa_center][fa_middle]Willow possui dois valores importantes. Seus [wave]VPs[/wave] e seus [wave]MPs.[/wave]";
		text3 = "[gameFont][fa_center][fa_middle]Caso seus [wave]Pontos de Mana(MP)[/wave] cheguem à zero, Willow não poderá mais fazer suas magias.";
		text4 = "[gameFont][fa_center][fa_middle]Caso isso aconteça, escolha [wave]Recuperar Mana![/wave]";
		text5 = "[gameFont][fa_center][fa_middle]Caso meus [wave]Pontos de Vontade(VP)[/wave] cheguem à zero, Willow perderá a batalha.";
		text6 = "[gameFont][fa_center][fa_middle]Caso seus VPs estejam baixos, escolha [wave]Recuperar Vida![/wave]";
		text7 = "[gameFont][fa_center][fa_middle]Com seus MPs, Willow pode escolher entre dois outros tipos de magia, [wave]Ataque Fraco[/wave] e [wave]Ataque Forte.[/wave]";
		text8 = "[gameFont][fa_center][fa_middle]Escolha bem! Cada magia gasta seus MPs.";
		text9 = "[gameFont][fa_center][fa_middle]Boa sorte nas batalhas!";
	break;
	case Cutscene1:
		text1 = "[gameFont][fa_center][fa_middle]O público [shake]vibra.[/shake] Willow e Lyra se encaram, divididas entre a [wave]amizade[/wave] e a [wave]competição.[/wave]";
		text2 = "[gameFont][fa_center][fa_middle]A luta é intensa, cheia de truques criativos e risadas no meio das magias. Mas no fim, Willow [wave]vence[/wave] e Lyra sorri, [wave]orgulhosa.[/wave]";
		text3 = "[gameFont][fa_center][fa_middle]A próxima oponente é [wave]Mira[/wave], uma bruxa mais velha, calma e gentil, que saúda Willow com respeito.";
		text4 = "[gameFont][fa_center][fa_middle]“Ouvi falar de você,” Mira comenta. “Que sorte enfrentar alguém tão promissor.”";
		text5 = "[gameFont][fa_center][fa_middle]“Espero que eu não decepcione,” Willow pontua, preparada para lutar.";
	break;
	case Cutscene2:
		text1 = "[gameFont][fa_center][fa_middle]A batalha é equilibrada. Mira domina seus feitiços, enquanto Willow improvisa com seu conhecimento.";
		text2 = "[gameFont][fa_center][fa_middle]Mesmo [shake]perdendo terreno[/shake], Willow sente que [wave]aprende[/wave] a cada movimento.";
		text3 = "[gameFont][fa_center][fa_middle]Quando [wave]vence[/wave], ela quase se desculpa.";
		text4 = "[gameFont][fa_center][fa_middle]Mas Mira sorri, e diz: “Saber vencer sem se corromper… isso é raro. Continue assim.”";
	break;
	case Cutscene3:
		text1 = "[gameFont][fa_center][fa_middle]A [shake]final[/shake] chega.";
		text2 = "[gameFont][fa_center][fa_middle]A multidão grita o nome da última oponente: [shake]Seraphine[/shake], uma bruxa arrogante, poderosa e temida.";
		text3 = "[gameFont][fa_center][fa_middle]“Então é você…” Seraphine ameaça. “A garotinha que chegou até aqui por sorte?”";
		text4 = "[gameFont][fa_center][fa_middle]Porém, Willow responde, corajosa e determinada: “Não é sorte. É esforço.”";
	break;
	case CutsceneEnd:
		text1 = "[gameFont][fa_center][fa_middle]O público torce e grita pela bruxa vitoriosa.";
		text2 = "[gameFont][fa_center][fa_middle]Willow, ofegante, ergue o rosto.";
		text3 = "[gameFont][fa_center][fa_middle]“Ser inteligente não é ser cruel,” ela repreende. “Saber mais não te dá o direito de pisar nos outros.”";
		text4 = "[gameFont][fa_center][fa_middle]“A verdadeira magia... são os amigos que fazemos pelo caminho!”";
		text5 = "[gameFont][fa_center][fa_middle]As luzes mágica da cidade brilham mais forte e, pela primeira vez em anos, Eldora parece em paz.";
	break;
}