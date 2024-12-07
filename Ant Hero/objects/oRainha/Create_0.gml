/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.vidaMax = 20;
global.vidaAtual = global.vidaMax;

global.pontuacao = 0;

nivelRainha = 1;
global.maxSoldados = nivelRainha * 5;
global.soldadosCriados = 0;

if (global.soldadosCriados < global.maxSoldados) {
    var soldado = instance_create_layer(x, y, "Instances", oSoldado);
    global.soldadosCriados += 1;
}
