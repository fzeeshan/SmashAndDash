///scr_attack_state
// Control Direction player facing

/*
0 - power, 
1 - mp_cost, 
2 - msl_spd, 
3 - knockback_rate, 
4 - juggle_rate
*/

if dead{exit}

state_name = "msl_attack";

var move_sprite_main = get_3dval(aerange_move_list, move_id, 0, 0);
var move_sprite_missile = get_3dval(aerange_move_list, move_id, 0, 3);
var move_sprite_effect = get_3dval(aerange_move_list, move_id, 0, 2);

var move_power = get_3dval(aerange_move_list, move_id, 1, 0);
var move_mpcost = get_3dval(aerange_move_list, move_id, 1, 1);
var move_missle_xspeed = get_3dval(aerange_move_list, move_id, 1, 2);
var move_missle_yspeed = get_3dval(aerange_move_list, move_id, 1, 3);
var move_knockback_rate = get_3dval(aerange_move_list, move_id, 1, 4);
var move_juggle_rate = get_3dval(aerange_move_list, move_id, 1, 5);
var move_accelerate = get_3dval(aerange_move_list, move_id, 1, 6);

if sprite_index == move_sprite_main{
    if image_index == image_number - 5{
        var missile = instance_create(x,y,OBJ_MISSILE_BASE);
        missile.owner = self.id;
        missile.accelerate = move_accelerate;
        missile.image_xscale = image_xscale;
        missile.image_yscale = image_yscale;
        missile.sprite_index = move_sprite_missile;
        missile.effect = move_sprite_effect;
        missile.pow = move_power;
        missile.xspd = move_missle_xspeed*sign(image_xscale);
        missile.yspd = move_missle_yspeed;//*sign(image_xscale);
        missile.knockback_rate =  move_knockback_rate;
        missile.juggle_rate =  move_juggle_rate;
        missile.max_hits = 1;
        missile.cur_hits = 0;
        
        attacking = false;
        running = false;
            walking = false;
        action = false;  
        if (AI){state = scr_idle;}
        else {state = scr_move_state;}
            
    }

}

if attacking{exit;}

if curmp < move_mpcost{        
    if (AI){state = scr_idle;}
    else {state = scr_move_state;}
    exit;
}

if  sprite_index != move_sprite_main and !attacking and !action and !onground{
    sprite_index = move_sprite_main;
    imgspd = normal_imgspd;
    image_speed = imgspd;
    image_index = 0;
    curmp -= move_mpcost;
    attacking = true;
    action = true;
    vpsd = 0;
    vspd -= jspd/2;
    hspd = 0;
    spd = walk_spd;
}

