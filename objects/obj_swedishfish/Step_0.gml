var _temp_local_var_6;
switch state
{
    case 86:
        scr_enemy_idle()
        break
    case 88:
        scr_enemy_charge()
        break
    case 90:
        scr_enemy_turn()
        break
    case 94:
        scr_enemy_walk()
        break
    case 96:
        scr_enemy_land()
        break
    case 97:
        scr_enemy_hit()
        break
    case 98:
        scr_enemy_stun()
        break
    case 89:
        scr_enemy_throw()
        break
    case 101:
        scr_enemy_grabbed()
        break
    case 102:
        scr_enemy_scared()
        break
}

if (state == 98 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 98)
    birdcreated = 0
if (state == 94 && y > ystart && (!(scr_solid(x, (y - 1)))))
    y--
if (state == 94 && y < ystart && (!(scr_solid(x, (y + 1)))))
    y++
if (state == 98)
    grav = 0.5
else
    grav = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != 101)
    depth = 0
var _temp_local_var_6 = (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60))
if (hitboxcreate == 0 && state == 88 && sprite_index == spr_swed_charge)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        ID = other.id
        image_xscale = other.image_xscale
        x = other.x
        y = other.y
        depth = -1
        sprite_index = spr_chargershitbox
        mask_index = spr_chargershitbox
    }
}
if (sprite_index == spr_swed_chargestart && floor(image_index) == (image_number - 1))
{
    sprite_index = spr_swed_charge
    movespeed = 10
}
if (bombreset > 0)
    bombreset--
if (obj_player.bushdetection == 0 && obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60) && state == 94 && bombreset == 0)
{
    if (state != 88 || state != 98)
        state = 88
    if (state == 88 && sprite_index != spr_swed_charge && sprite_index != scaredspr)
    {
        sprite_index = spr_swed_chargestart
        image_xscale = (-(sign((x - obj_player.x))))
        bombreset = 250
    }
}
if (state == 88 && place_meeting((x + 1), y, obj_solid) && vsp < -18)
{
    state = 98
    vsp++
    sprite_index = stunfallspr
    stunned = 100
}
if (state == 98 || state == 94)
    movespeed = 0
if (state != 98)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60))
{
    if (state != 102 && obj_player.state == (83 << 0))
    {
        state = 102
        sprite_index = scaredspr
        if (x != obj_player.x)
            image_xscale = (-(sign((x - obj_player.x))))
        movespeed = 0
        hsp = 0
        image_index = 0
    }
}
