// Desenha a si mesma e as variáveis

draw_self();

draw_text(10, 20, "////////// INFOS //////////");
draw_text(10, 50, "Pontuacao: " + string(global.pontuacao));
draw_text(10, 80, "Vida: " + string(global.vidaAtual) + "/" + string(global.vidaMax));
draw_text(10,110, "Soldados:" + string(global.soldadosCriados) + "/" + string(global.maxSoldados));
draw_text(10, 130, "Construtores:" + string(global.construtoresCriados) + "/" + string(global.maxConstrutores));


draw_text(10,350, "////////// CUSTOS //////////");
draw_text(10, 380, "Subir de nivel:" + string(global.expRainha));
draw_text(10, 410, "Soldado = 20 pts + Q");
draw_text(10, 430, "Construtor = 35 pts + W");
draw_text(10, 450, "Curar rainha = 10 pts + R");


draw_text(930,400, "Nivel:" + string(nivelRainha));