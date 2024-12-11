// Incrementa o contador a cada frame
contadorDeTempo += 1;

// Verifica se o tempo de criação foi atingido
if (contadorDeTempo >= intervaloDeCriacao) 
{
    // Cria o novo objeto na posição (x, y) deste objeto
    instance_create_layer(x, y, "Instances", oSoldado);
	soldadosGerados += 1;

    // Reseta o contador de tempo para recomeçar a contagem
    contadorDeTempo = 0;
}

if(soldadosGerados >= maxSoldados)
{
	instance_destroy();
	global.construtoresCriados -= 1;
}
