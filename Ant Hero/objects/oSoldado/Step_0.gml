var inimigo = instance_nearest(x, y, oInimigo);

if (inimigo != noone) {
    var direcao = point_direction(x, y, inimigo.x, inimigo.y);
    var velocidade = 10;
    x += lengthdir_x(velocidade, direcao);
    y += lengthdir_y(velocidade, direcao);
}
