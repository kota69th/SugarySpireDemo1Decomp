function scr_player_cottonroll() //gml_Script_scr_player_cottonroll
{
    if (dir != xscale)
    {
        dir = xscale
        movespeed = 0
    }
    hsp = (xscale * movespeed)
    if (sprite_index == spr_cotton_run && floor(image_index) == (image_number - 1))
    {
        sprite_index = spr_cotton_maxrun
        flash = 1
        movespeed = 13
    }
    if (sprite_index != spr_cotton_maxrun)
        movespeed += 0.25
    if (key_attack || place_meeting(x + hsp, y, obj_solid))
    {
        state = 100
        sprite_index = spr_cotton_idle
        vsp = 0
        movespeed = 0
        image_index = 0
    }
    if ((place_meeting((x + 1), y, obj_solid) || place_meeting((x - 1), y, obj_solid)) && (!scr_slope()))
    {
        if (sprite_index == spr_cotton_maxrun && grounded)
        {
            state = 100
            sprite_index = spr_cotton_slam
            vsp = -4
            image_index = 0
            movespeed = 0
        }
        else if (sprite_index == spr_cotton_maxrun && (!grounded))
        {
            state = 100
            sprite_index = spr_cotton_slam
            vsp = -4
            image_index = 0
            movespeed = 0
        }
        else if (sprite_index == spr_cotton_run)
        {
            state = 100
            sprite_index = spr_cotton_idle
            vsp = 0
            movespeed = 0
            image_index = 0
        }
    }
    if (grounded && sprite_index == spr_cotton_maxrun && key_jump)
        vsp = -10
    if (grounded && sprite_index == spr_cotton_run && key_jump)
        vsp = -8
    if (key_down2 && (!grounded) && drill == 1 && sprite_index == spr_cotton_maxrun)
    {
        vsp = 9
        state = 110
        sprite_index = spr_cotton_drill
        image_index = 0
        scr_sound(sound_suplex1)
        flash = 1
        drill = 0
        with (instance_create(x, y, obj_afterimageoutward))
            hspeed = 7
        with (instance_create(x, y, obj_afterimageoutward))
            hspeed = -7
        with (instance_create(x, y, obj_afterimageoutward))
            vspeed = 7
        with (instance_create(x, y, obj_afterimageoutward))
            vspeed = -7
    }
}