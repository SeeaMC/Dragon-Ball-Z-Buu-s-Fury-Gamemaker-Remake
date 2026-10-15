if (impact)
{
    var cx = display_get_gui_width() / 2;
    var cy = display_get_gui_height() / 2;

    draw_set_color(c_black);

    for (var i = 0; i < 40; i++)
    {
        var ang = i * (360 / 40) + random_range(-4, 4);
        var d1 = random_range(300, 600);   
        var d2 = 1500;
        var largura = random_range(0.5, 2); 
        var x1 = cx + lengthdir_x(d1, ang);
        var y1 = cy + lengthdir_y(d1, ang);
        var x2 = cx + lengthdir_x(d2, ang - largura);
        var y2 = cy + lengthdir_y(d2, ang - largura);
        var x3 = cx + lengthdir_x(d2, ang + largura);
        var y3 = cy + lengthdir_y(d2, ang + largura);

        draw_triangle(x1, y1, x2, y2, x3, y3, false);
    }

    draw_set_color(c_white);
}