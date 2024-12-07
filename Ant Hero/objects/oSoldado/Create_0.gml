soldVidaMax = 15;
soldVidaAtual = soldVidaMax;
image_xscale = 0.1;
image_yscale = 0.1;

if (soldadosCriados < maxSoldados) {
    // Cria um soldado
    var soldado = instance_create_layer(x, y, "Instances", oSoldado);

    soldadosCriados += 1;
}

