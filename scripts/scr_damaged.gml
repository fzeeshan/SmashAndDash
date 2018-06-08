///scr_damaged
state_name = "damaged";
if sprite_index == sprite_damaged{
    if image_index == image_number - 1{
        damaged = false;
        action = false;
        running = false;
        dodging = false;
        walking = false;
        //enable directional key
        if image_xscale == scale{
            spd = walk_spd;
            rkey = true;
        }else{
            spd = walk_spd;
            lkey = true;
        }
        //spd = 0;
        if !AI{
           state = scr_move_state;
        }else{
            state = choose(scr_idle);
            
            //randomize();
            //state = choose(scr_move_left,scr_move_right);
        }
    }
}
fric = 1;
scr_force();

imgspd = normal_imgspd;
image_speed = imgspd;

if damaged {exit;}

if sprite_index != sprite_damaged{
    attacking = false;
    running = false;
    dodging = false;
    dashing = false;
    //spd = walk_spd;
    image_index = 0;
    sprite_index = sprite_damaged;
    shader = shd_default;
    combo_num = 0;
    combo_index = 0;
    damaged = true;
    action = true;
    
    spd = 0;
    
}

