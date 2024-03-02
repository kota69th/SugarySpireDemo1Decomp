function scr_enemy_stun() //scr_enemy_stun
{
    stunned--
    sprite_index = stunfallspr
    image_speed = 0.35
    if ((grounded || (grounded && (!(place_meeting(x, y, obj_platform))))) && vsp > 0)
    {
        hsp = 0
        if (thrown == 1 && hp <= 0 && object_index != obj_noisecrusher)
            instance_destroy();
        if (object_index == obj_noisecrusher && hp <= 0 && thrown == 1)
        {
            alarm[0] = 100
            alarm[3] = 20
            stunned = 500
            flash = 1
            vsp = -5
            hsp = ((-image_xscale) * 5)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_baddiegibs)
            instance_create(x, y, obj_baddiegibs)
            instance_create(x, y, obj_baddiegibs)
            with (obj_camera)
            {
                shake_mag = 3
                shake_mag_acc = (3 / room_speed)
            }
            hp = 5
            thrown = 0
        }
        if (hp > 0)
            thrown = 0
    }
    if ((grounded || (grounded && (!(place_meeting(x, y, obj_cottonplatform))))) && vsp > 0)
    {
        hsp = 0
        if (thrown == 1 && hp <= 0 && object_index != obj_noisecrusher)
            instance_destroy();
        if (object_index == obj_noisecrusher && hp <= 0 && thrown == 1)
        {
            alarm[0] = 100
            alarm[3] = 20
            stunned = 500
            flash = 1
            vsp = -5
            hsp = ((-image_xscale) * 5)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_baddiegibs)
            instance_create(x, y, obj_baddiegibs)
            instance_create(x, y, obj_baddiegibs)
            with (obj_camera)
            {
                shake_mag = 3
                shake_mag_acc = (3 / room_speed)
            }
            hp = 5
            thrown = 0
        }
        if (hp > 0)
            thrown = 0
    }
    if place_meeting(x, (y + 1), obj_railh)
        hsp = -5
    else if place_meeting(x, (y + 1), obj_railh2)
        hsp = 5
    if (((scr_solid((x + 1), y) && image_xscale == -1) || (scr_solid((x - 1), y) && image_xscale == 1)) && thrown == 0)
    {
        with (instance_create(x, y, obj_bulletimpact))
            image_xscale = (-other.image_xscale)
        grav = 0.5
        image_xscale *= -1
        hsp = ((-image_xscale) * 4)
    }
    if (((scr_solid((x + 1), y) && image_xscale == -1) || (scr_solid((x - 1), y) && image_xscale == 1)) && thrown == 1)
    {
        with (instance_create(x, y, obj_bulletimpact))
            image_xscale = (-other.image_xscale)
        instance_destroy();
    }
    if (floor(image_index) == (image_number - 1) && stunned < 0)
    {
        image_index = 0
        sprite_index = idlespr
        state = 86
        if (object_index != obj_charger && object_index == obj_swedishfish)
            movespeed = 1
    }
    if (object_index == obj_sluggy && stunned == 0)
    {
        movespeed = 1
        state = 94
    }
}

