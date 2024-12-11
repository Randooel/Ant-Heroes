global.tempo_para_criar -= 1;

if (global.tempo_para_criar <= 0 && global.inimigos_ativos < global.max_inimigos) {
    var posX, posY;

    if (random(1) < 0.5) {
        posX = (random(1) < 0.5) ? -32 : 1920 + 32;
        posY = random(1080);
    } else {
        posX = random(1920);
        posY = (random(1) < 0.5) ? -32 : 1080 + 32;
    }

    instance_create_layer(posX, posY, "Instances", oInimigo);
    global.inimigos_ativos += 1;
    global.tempo_para_criar = random_range(global.intervalo_min, global.intervalo_max);
}