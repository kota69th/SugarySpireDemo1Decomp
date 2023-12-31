function scr_player_freefall() //scr_player_freefall
{
    hsp = 0
    landAnim = 1
    move = (key_left + key_right)
    if (!grounded)
    {
        hsp = (move * movespeed)
        if (move != xscale && momemtum == 1 && movespeed != 0)
            movespeed -= 0.05
        if (movespeed == 0)
            momemtum = 0
        if ((move == 0 && momemtum == 0) || scr_solid((x + hsp), y))
        {
            movespeed = 0
            mach2 = 0
        }
        if (move != 0 && movespeed < 7)
            movespeed += 0.25
        if (movespeed > 7)
            movespeed -= 0.05
        if ((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == -1))
            movespeed = 0
        if (dir != xscale)
        {
            mach2 = 0
            dir = xscale
            movespeed = 0
        }
        if (move == (-xscale))
        {
            mach2 = 0
            movespeed = 0
            momemtum = 0
        }
        if (move != 0)
            xscale = move
    }
    if (global.cane == 0)
        sprite_index = spr_player_bodyslamfall
    if (global.cane == 1)
        sprite_index = spr_caneslam
    if (grounded && (!input_buffer_jump) < 8 && (!(place_meeting(x, (y + 1), obj_destructibles))))
    {
        scr_sound(sound_maximumspeedland)
        image_index = 0
        if (global.cane == 0)
            state = 70
        if (global.cane == 1)
        {
            state = 51
            vsp = -7
        }
        jumpAnim = 1
        jumpstop = 0
        with (obj_baddie)
        {
            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
            {
                vsp = -7
                hsp = 0
            }
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
        combo = 0
        bounce = 0
        instance_create(x, y, obj_landcloud)
        freefallstart = 0
        sprite_index = spr_player_bodyslamland
    }
    if place_meeting(x, (y + 1), obj_destructibles)
        vsp = 20
    image_speed = 0.35
    metal++
    if (metal > 10 && (!instance_exists(obj_groundpoundeffect)))
        instance_create_depth(x, y, -6, obj_groundpoundeffect)
    if (key_attack2 && (!grounded) && vsp > 10 && instance_exists(obj_groundpoundeffect))
    {
        if (move != 0)
            xscale = move
        movespeed = 10
        machhitAnim = 0
        state = 63
        flash = 1
        vsp = -2
        sprite_index = spr_mach2jump
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale
        metal = 0
    }
}

