function scr_playerreset() //scr_playerreset
{
    if instance_exists(obj_endlevelfade)
        instance_destroy(obj_endlevelfade)
    if instance_exists(obj_fadeout)
        instance_destroy(obj_fadeout)
    obj_tv.combofade = 0
    global.seconds = 59
    global.minutes = 1
    global.playminutes = 0
    global.playseconds = 0
    global.panic = 0
    global.style = 0
    global.stylethreshold = 0
    obj_tv.image_index = 0
    obj_tv.tvsprite = spr_tvturnon
    obj_player.state = 0
    obj_player.visible = true
    obj_player.targetDoor = "A"
    ds_list_clear(global.saveroom)
    ds_list_clear(global.baddieroom)
    obj_music.fadeoff = 0
    instance_destroy(obj_confectimallow)
    instance_destroy(obj_confecticrack)
    instance_destroy(obj_confectichoco)
    instance_destroy(obj_confectiworm)
    instance_destroy(obj_confecticandy)
    ds_list_clear(global.FollowerList)
    global.mallowfollow = 0
    global.crackfollow = 0
    global.chocofollow = 0
    global.wormfollow = 0
    global.candyfollow = 0
    audio_stop_all()
    with (obj_player)
    {
        Dashpad_buffer = 0
        vertical = 0
        verticaloffset = 0
        scr_characterspr()
        alarm[0] = -1
        alarm[1] = -1
        alarm[3] = -1
        alarm[4] = -1
        alarm[5] = -1
        alarm[6] = -1
        alarm[7] = -1
        alarm[8] = -1
        alarm[9] = -1
        alarm[10] = -1
        grav = 0.5
        hsp = 0
        vsp = 0
        xscale = 1
        yscale = 1
        steppy = 0
        movespeedmax = 5
        jumpstop = 0
        start_running = 1
        visible = true
        turn = 0
        jumpAnim = 1
        dashAnim = 1
        landAnim = 0
        machslideAnim = 0
        moveAnim = 1
        stopAnim = 1
        crouchslideAnim = 1
        crouchAnim = 1
        machhitAnim = 0
        stompAnim = 0
        inv_frames = 0
        turning = 0
        hurtbounce = 0
        hurted = 0
        autodash = 0
        mach2 = 0
        input_buffer_jump = 8
        input_buffer_secondjump = 8
        input_buffer_highjump = 8
        targetRoom = 0;
        flash = 0
        global.key_inv = 0
        global.keyget = 0
        global.collect = 0
        global.ammo = 0
        global.treasure = 0
        global.combo = 0
        global.combotime = 0
        global.pizzacoin = 0
        global.roomsave = 0
        global.toppintotal = 1
        global.hit = 0
        in_water = 0
        key_particles = 0
        barrel = 0
        bounce = 0
        a = 0
        idle = 0
        attacking = 0
        slamming = 0
        superslam = 0
        machpunchAnim = 0
        punch = 0
        machfreefall = 0
        shoot = 1
        instakillmove = 0
        windingAnim = 0
        facestompAnim = 0
        ladderbuffer = 0
        chainsaw = 50
        toomuchalarm1 = 0
        toomuchalarm2 = 0
        dashdust = 0
        throwforce = 0
        hurtsound = 0
        idleanim = 0
        momemtum = 0
        cutscene = 0
        grabbing = 0
        dir = xscale
        shotgunAnim = 0
        goingdownslope = 0
        goingupslope = 0
        fallinganimation = 0
        bombpeptimer = 100
        slapbuffer = 0
        slaphand = 1
        suplexmove = 0
        suplexhavetomash = 0
        timeuntilhpback = 300
        anger = 0
        angry = 0
    }
    with (obj_tv)
    {
        shownranka = 0
        shownrankb = 0
        shownrankc = 0
    }
}

