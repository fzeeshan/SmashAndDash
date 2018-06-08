//Control the sprites
if global.paused == 1{image_speed = 0;exit;}
else {image_speed = imgspd;}
if dead{
    //state = scr_dead;
    exit;
}
if guarding{sprite_index = sprite_guard;exit;}
if damaged or action{exit}
//JUMPING
if (yprevious != y){
    sprite_index = sprite_jump;
    image_speed = 0;
    image_index = y>yprevious;
} else {
    //MOVING
    if xprevious != x{
        if spd==run_spd{
            //sprite_index = sprite_run;
        //}else if dodging{
            //sprite_index = sprite_dodge;
            //scr_create_thrail(.3);
        //}else if dashing{
            //sprite_index = sprite_dash;
            sprite_index = sprite_run;
        }else{
            sprite_index = sprite_walk;
        }
        if (xprevious<x){
            if cur_spd==dash_spd{
                sprite_index = sprite_dash;
            }
            if cur_spd==dodge_spd{
                sprite_index = sprite_dodge;
            }
        }else if (xprevious>x){
            if cur_spd==-dash_spd{
                sprite_index = sprite_dash;
            }
            if cur_spd==-dodge_spd{
                sprite_index = sprite_dodge;
            }
        } 
        image_speed = imgspd;
    } else {
        //IDLE
        sprite_index = sprite_stance;
        image_speed = imgspd;
    }
}

if sprite_index == sprite_run{
    if image_index == 1{
        var dust = scr_create_effect(x,y,obj_effect,spr_dash_dust);
    }
}
