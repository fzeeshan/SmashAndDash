///scr_attack_state
// Control Direction player facing
if dead{exit}/*
if attacking and sprite_index == sprite_stance{
    attacking = false;
    state = scr_idle;
}*/
state_name = "single";

/*
    SPRITE - main, hbx, effect, msl
    STAT - power, mp_cost, msl_spd, knockback_rate, juggle_rate
    SOUND - 
*/
    
    
var move_sprite_main = get_3dval(jump_move_list, move_id, 0, 0);
var move_sprite_hitbox = get_3dval(jump_move_list, move_id, 0, 1);
var move_sprite_effect = get_3dval(jump_move_list, move_id, 0, 2);

var move_power = get_3dval(jump_move_list, move_id, 1, 0);
var move_mpcost = get_3dval(jump_move_list, move_id, 1, 1);
var move_knockback_rate = get_3dval(jump_move_list, move_id, 1, 4);
var move_juggle_rate = get_3dval(jump_move_list, move_id, 1, 5);

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
    hitbox.max_hits = 1;
    hitbox.cur_hits = 0;
    curmp -= move_mpcost;
    
    vspd = -jspd*1.5;

    attacking = true;
    action = true;
    
    hspd = 0;
    spd = walk_spd;
}

