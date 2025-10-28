timer = 0;  // Counts frames (at 60 FPS, 60 = 1 second)
stage = 0;  // Current part of cutscene (0 = start, 1 = text1, 2 = image, etc.)
max_stages = 6;  // Total stages (adjust per cutscene)
//skip_allowed = true;

typist = scribble_typist();
typist.in(0.5, 0);

// cutscene 1
text1 = "[gameFont][fa_center][fa_middle]País de Rune Radiance, ano desconhecido...";
text2 = "[gameFont][fa_center][fa_middle]Em [wave]Eldora[/wave], uma cidade conhecida por seu brilho mágico, acontece o [pulse]Torneio da Radiância.[/pulse]";
text3 = "[gameFont][fa_center][fa_middle]Uma vez por ano, todos os bruxos e bruxas se reúnem para provar quem é o mais sábio, criativo e poderoso.";
text4 = "[gameFont][fa_center][fa_middle]Entre a multidão, está [wave]Willow[/wave], uma jovem bruxa curiosa, cheia de ideias, mas sem fama. Ela se inscreve sem grandes expectativas, só quer testar o que aprendeu.";
text5 = "[gameFont][fa_center][fa_middle]Enquanto observa os outros competidores, Willow descobre algo inesperado: sua melhor amiga, [wave]Lyra[/wave], também se inscreveu.";
text6 = "[gameFont][fa_center][fa_middle]As duas riem da coincidência, até perceberem que vão se [shake]enfrentar.[/shake]";