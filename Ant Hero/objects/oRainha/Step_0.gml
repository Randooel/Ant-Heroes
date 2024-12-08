if (global.pontuacao >= 20) {
    if (keyboard_check_pressed(ord("Q"))) {
        if (global.soldadosCriados < global.maxSoldados) {
            var soldado = instance_create_layer(x, y, "Instances", oSoldado);
            global.soldadosCriados += 1;
            global.pontuacao -= 20;
        }
    }
}

if (global.pontuacao >= global.expRainha)
{
    if (keyboard_check_pressed(ord("E"))) {
        nivelRainha += 1;
		global.maxSoldados += 1;
		
        global.pontuacao -= global.expRainha;
		
		global.expRainha += 25;
    }
}

// Reseta a cena caso a vida rainha chegue a 0
global.pontuacaoAnterior = global.pontuacao;

if (global.vidaAtual <= 0) {
    room_restart();
}
