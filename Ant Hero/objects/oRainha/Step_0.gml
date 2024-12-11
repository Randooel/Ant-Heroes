// Lógica para converter pontos em soldados
if (global.pontuacao >= 20) {
    if (keyboard_check_pressed(ord("Q"))) {
        if (global.soldadosCriados < global.maxSoldados) {
            var soldado = instance_create_layer(x, y, "Instances", oSoldado);
			
			// Cria o soldado
            global.soldadosCriados += 1;
			
			
			// Desconta os pontos utilizados
            global.pontuacao -= 20;
        }
    }
}

// Lógica para converter pontos em NÍVEL
if (global.pontuacao >= global.expRainha)
{
    if (keyboard_check_pressed(ord("E"))) {
        nivelRainha += 1;
		
		// Efeitos por subir de nível
		global.maxSoldados += 1;
		global.vidaMax += 15;
		global.maxConstrutores += 1;
		
		// Desconta os pontos utilizados ANTES de aumentar o valor necessário
		global.pontuacao -= global.expRainha;
		
		// Aumenta o custo para subir de nível
		global.expRainha += 25;
    }
}

// Lógica para trocar pontos por VIDA
if (global.pontuacao >= 10)
{
	if (global.vidaAtual < global.vidaMax)
	{
		if(keyboard_check_pressed(ord("R")))
		{
			global.vidaAtual += 15;
			
			global.pontuacao -= 10;
		}
	}
}

// Lógica para trocar pontos por CONSTRUTOR

if (global.pontuacao >= 35)
{
	if (keyboard_check_pressed(ord("W")))
	{
		if(global.construtoresCriados < global.maxConstrutores)
		{
			var construtor = instance_create_layer(x, y, "Instances", oConstrutor);
			global.construtoresCriados += 1;
			
			global.pontuacao -= 35;
		}	
	}
}


// Reseta a cena caso a vida rainha chegue a 0
global.pontuacaoAnterior = global.pontuacao;

if (global.vidaAtual <= 0) {
    room_restart();
}