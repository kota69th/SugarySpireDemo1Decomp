function scr_enemy_inhaled() //scr_enemy_inhaled
{
    boundbox = 0
    var angle = point_direction(x, y, obj_player.x, obj_player.y)
    x += lengthdir_x(3, angle)
    y += lengthdir_y(3, angle)
    sprite_index = grabbedspr
}

