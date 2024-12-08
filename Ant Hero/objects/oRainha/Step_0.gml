if (global.pontuacao = 20) {
    if (global.soldadosCriados < global.maxSoldados) {
        var soldado = instance_create_layer(x, y, "Instances", oSoldado);
        global.soldadosCriados += 1;
		
		global.pontuacao -= 20;
    }
}

global.pontuacaoAnterior = global.pontuacao;

if(global.vidaAtual <= 0)
{
	room_restart()
}