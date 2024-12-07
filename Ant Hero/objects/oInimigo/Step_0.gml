if (instance_exists(oRainha)) {
    var target_x = oRainha.x;
    var target_y = oRainha.y;

    var direcao = point_direction(x, y, target_x, target_y);

    x += lengthdir_x(4, direcao);
    y += lengthdir_y(4, direcao);
}
