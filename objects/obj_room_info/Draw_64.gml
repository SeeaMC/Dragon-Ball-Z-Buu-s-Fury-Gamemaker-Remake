if (draw == 1)
{
    var _gw = display_get_gui_width();
    var _gh = display_get_gui_height();

    var _k  = 1;
    var _y  = _gh * 0.85;

    var _spr  = asset_get_index("spr_title_" + zone);
    var _sw   = sprite_get_width(_spr);
    var _sh   = sprite_get_height(_spr);
    var _xoff = sprite_get_xoffset(_spr);
    var _yoff = sprite_get_yoffset(_spr);

    var _xs = 4 * _k;      
    var _ys = size * _k;   
    var _left  = _gw / 2 - _xoff * _xs;
    var _right = _left + _sw * _xs;
    var _top   = _y - _yoff * _ys;

    draw_sprite_part_ext(_spr, 0, 2, 0, 1, _sh, 0, _top, max(_left, 0), _ys, c_white, 1);
    draw_sprite_part_ext(_spr, 0, _sw - 3, 0, 1, _sh, _right, _top, max(_gw - _right, 0), _ys, c_white, 1);

    draw_sprite_ext(_spr, 0, _gw / 2, _y, _xs, _ys, 0, -1, 1);
}