// Desenha a si mesma e as variáveis

draw_self();

draw_text(10, 10, "Pontuação " + string(global.pontuacao));
draw_text(10, 30, "Vida: " + string(global.vidaAtual));

// Lógica para instanciar soldados a cada 10 pontos

if (global.pontuacao % 10 == 0) {
    var soldado = instance_create_layer(x, y, "Instances", oSoldado);
}
