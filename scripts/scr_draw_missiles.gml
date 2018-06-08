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

state_name = "msl_attacks";

var move_sprite_main = get_3dval(range_move_list, move_id, 0, 0);
var move_sprite_missile = get_3dval(range_move_list, move_id, 0, 3);
var move_sprite_effect = get_3dval(range_move_list, move_id, 0, 2);

var move_power = get_3dval(range_move_list, move_id, 1, 0);
var move_mpcost = get_3dval(range_move_list, move_id, 1, 1);
var move_missle_xspeed = get_3dval(range_move_list, move_id, 1, 2);
var move_missle_yspeed = get_3dval(range_move_list, move_id, 1, 3);
var move_knockback_rate = get_3dval(range_move_list, move_id, 1, 4);
var move_juggle_rate = get_3dval(range_move_list, move_id, 1, 5);
var move_accelerate = get_3dval(range_move_list, move_id, 1, 6);

if sprite_index == move_sprite_main and combo_num<combo_count{
            //if image_index >= image_number -1{
        if image_index >= image_number-1{
            attacking = false;
            action = false;   
            //state = scr_idle;            
            
        if combo_num<combo_count{
            combo_num++;
            state = scr_draw_missiles;
        }
        if combo_num==combo_count{
               if (AI){state = scr_idle;}
               else {state = scr_move_state;} 
               shader = shd_default;
               imgspd = normal_imgspd;
               combo_num = 0;
               image_speed = imgspd;
            }
        }
        if image_index >=  image_number -1{
                        //if sprite_attack_len<= 0{from = 0}else{from = 1;}
                        //last_i = i;
                        //i = floor(random_range(0,sprite_attack_len-1));
                        //while (i==last_i and combo_count>1){i = floor(random_range(0,sprite_attack_len-1));}//For avoiding same index consecutively

            move_id = combo_list[combo_index];
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
        }


        

}

if attacking{exit;}
move_sprite_main = get_3dval(range_move_list, move_id, 0, 0);


if curmp < move_mpcost and combo_num == 0{
    imgspd = normal_imgspd;        
    if (AI){state = scr_idle;}
    else {state = scr_move_state;}
    exit;
}

if  combo_num == combo_index and !attacking and !action{
    //shader = shd_lightningblue;
    if combo_count>1{}
    if combo_count>1{ shader = shd_default; imgspd = fast_imgspd;}
    //sprite_ array = range_move_sprite[z,0];
    sprite_index = move_sprite_main;
    
    image_speed = imgspd;
    
    image_index = 0;
    if combo_index==0{
        curmp -= move_mpcost;
    }
    if (combo_index<combo_count-1){combo_index++;}
    attacking = true;
    action = true;
    
    hspd = 0;
    spd = walk_spd;
}

