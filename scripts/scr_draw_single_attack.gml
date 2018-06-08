///scr_attack_state
// Control Direction player facing
if dead{exit}/*
if attacking and sprite_index == sprite_stance{
    attacking = false;
    state = scr_idle;
}*/
state_name = "ground";

/*
    SPRITE - main, hbx, effect, msl
    STAT - power, mp_cost, msl_spd, knockback_rate, juggle_rate
    SOUND - 
*/
    
scr_load_moveset("melee");
//
if sprite_index == move_sprite_main{
    if image_index >= image_number -1{
            attacking = false;
            running = false;
            walking = false;
            action = false;  
            if (AI){state = scr_idle;}
            else {state = scr_move_state;}
            imgspd = normal_imgspd;
            shader = shd_default;
            roll = irandom(100);
            chain_tap_timer_a1 = 10;
            if chain_count<array_length_1d(chain_array)-1{
                chain_count++;
            }else{
                chain_count=0;
            
            }
    }
}
/*
if guarding{    
    if AI{
        guarding = false;
        state = scr_idle;
    }else{
        guarding = false;
        state = scr_move_state;
    }
}
*/

if attacking{exit;}

/*if curmp < move_mpcost{
    state = scr_move_state;
    exit;
}*/

if  sprite_index != move_sprite_main and !attacking and !action and !guarding{
    sprite_index = move_sprite_main;
    imgspd = normal_imgspd;
    image_speed = imgspd;
    image_index = 0;
    var hitbox = instance_create(x,y,obj_hitbox);
    hitbox.sprite_index = move_sprite_hitbox;
    hitbox.knockback_rate = move_knockback_rate;
    hitbox.juggle_rate = move_juggle_rate;
    hitbox.image_xscale = image_xscale;
    hitbox.pow = move_power;
    hitbox.owner = self.id;
    hitbox.effect = move_sprite_effect;
    hitbox.sound_hit = move_sound_hit;
    hitbox.max_hits = 1;
    hitbox.cur_hits = 0;
    
    curmp -= move_mpcost;
    
    attacking = true;
    action = true;
    
    hspd = 0;
    spd = walk_spd;
    
    scr_text(choose("Yah!","Brah!","Hiyah!"),1,x,y-image_yscale,1,1);
    scr_play_sound(move_sound_draw,1,1);
}

