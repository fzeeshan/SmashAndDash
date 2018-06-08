///scr_damaged
state_name = "guarding";
if dead{exit}

if sprite_index == sprite_guard {
    if image_index >= image_number-1{
        image_speed = 0;
    }
}
fric = 1;

if guarding{exit;}

if sprite_index != sprite_guard and !action and !guarding and !attacking{
    alarm[5] = 30;
    attacking = false;
    sprite_index = sprite_guard;
    imgspd = normal_imgspd;
    image_speed = imgspd;
    shader = shd_default;
    combo_num = 0;
    image_index = 0;
    guarding = true;
    action = true;
}

