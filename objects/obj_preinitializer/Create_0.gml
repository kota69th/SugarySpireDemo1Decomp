image_speed = 0.05
for (i = 0; i < 100; i += 1)
    global.CollectablesArray[i] = 0
global.saveroom = ds_list_create()
__global_object_depths();

global.bigfont = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)

alarm_set(0, 1.5*60)