scr_initinput()
scr_getinput()
Dashpad_buffer = 0
vertical = 0
verticaloffset = 0
global.saveroom = ds_list_create()
grav = 0.5
hsp = 0
vsp = 0
xscale = 1
yscale = 1
facehurt = 1
steppy = 0
stop = 0
storedhsp = 0
depth = -7
movespeed = 19
jumpstop = 0
visible = true
state = 1
jumpAnim = 1
landAnim = 0
machslideAnim = 0
moveAnim = 1
stopAnim = 1
crouchslideAnim = 1
crouchAnim = 1
machhitAnim = 0
stompAnim = 0
inv_frames = 0
gumbobpropellerlength = 100
gumbobpropellercooldown = 200
hurted = 0
canrebound = 0
autodash = 0
mach2 = 0
input_buffer_jump = 8
input_buffer_secondjump = 8
input_buffer_highjump = 8
player_x = x
player_y = y
targetRoom = scootercutsceneidk;
flash = 0
parryid = -4
global.key_inv = 0
global.mallowfollow = 0
global.crackfollow = 0
global.chocofollow = 0
global.wormfollow = 0
global.candyfollow = 0
global.keyget = 0
global.collect = 0
global.ammo = 0
global.treasure = 0
global.combo = 0
global.roomsave = 0
global.combotime = 0
global.pizzacoin = 0
global.toppintotal = 1
global.hit = 0
global.combofreeze = 0
global.baddieroom = ds_list_create()
key_particles = 0
barrel = 0
bounce = 0
a = 0
idle = 0
attacking = 0
slamming = 0
superslam = 0
grounded = 1
grinding = 0
machpunchAnim = 0
punch = 0
machfreefall = 0
shoot = 1
instakillmove = 0
windingAnim = 0
facestompAnim = 0
ladderbuffer = 0
toomuchalarm1 = 0
toomuchalarm2 = 0
bushdetection = 0
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
suplexmove = 0
suplexhavetomash = 0
breakdanceammo = 0
anger = 0
angry = 0
character = "P"
baddiegrabbedID = -4
scr_characterspr()
paletteselect = 1
global.panic = 0
colorchange = 0
treasure_x = 0
treasure_y = 0
treasure_room = 0
wallspeed = 0
tauntstoredstate = 0
tauntstoredmovespeed = 6
tauntstoredsprite = spr_molassesbgpara2
taunttimer = 20
global.golfhit = 0
global.funmode = 0
swingdingbuffer = 0
lastmove = 0
hurtbounce = 0
targetDoor = "A"
roomstartx = xstart
roomstarty = ystart
hallway = 0
box = 0
scr_pal_swap_init_system(shd_pal_swapper)
global.cane = 0
jumpspeed = 0
metal = 0
drill = 1
bouncespeed = 0
bounced = 0
groundedcot = 0
ini_open("optionData.ini")
global.fullscreen = ini_read_real("Settings", "fullscrn", 0)
global.smoothcam = ini_read_real("Settings", "smthcam", 1)
global.screentilt = ini_read_real("Settings", "scrntilt", 1)
ini_close()
inhaling = 0
