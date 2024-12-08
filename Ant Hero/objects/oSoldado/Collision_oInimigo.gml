if (other.object_index == oInimigo) {
    with (other) {
        instance_destroy();
    }

    soldVidaAtual -= 5;
    global.pontuacao += 5;
}

//show_message("Vida do soldado: " + string(soldVidaAtual));

if (soldVidaAtual <= 0) {
    instance_destroy();
	global.soldadosCriados -= 1;
}
