///scr_damaged
state_name = "knockedback";
if sprite_index == sprite_damaged{
    imgspd = normal_imgspd;
    image_speed = imgspd;
    if image_index >= image_number-1{
        if !AI{
           state = scr_move_state;
        }else{
            state = scr_idle;
        }
        
        //enable directional key and speed
         if image_xscale == scale{
            spd = walk_spd;
            rkey = true;
        }else{
            spd = walk_spd;
            lkey = true;
        }
        damaged = false;
        action = false;
       
        //spd = 0;
    }
}
fric = 1;
scr_force();

if damaged {exit;}

if place_meeting(x+hspd,y,obj_solid){
    scr_quake(5,5);
}

if sprite_index != sprite_damaged{
    attacking = false;
    sprite_index = sprite_damaged;
    imgspd = 0;
    image_speed = imgspd;
    shader = shd_default;
    combo_num = 0;
    image_index = 0;
    damaged = true;
    dodging = false;
    dashing = false;
    action = true;
    
}

