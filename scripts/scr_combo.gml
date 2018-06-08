///scr_attack_state
// Control Direction player facing
if dead{exit}
if attacking and sprite_index == sprite_stance{
    attacking = false;
    state = scr_idle;
}
state_name = "combo";

var move_sprite_main = get_3dval(move_array, move_id, 0, 0);
if sprite_index == move_sprite_main and combo_num<combo_count{
    if image_index >= image_number -1{
            attacking = false;
            action = false;  
            if combo_num<combo_count{
                combo_num++;
                move_id = combo_list[combo_index];
                state = scr_combo;
            }
            if combo_num==combo_count{//tag =="player" and
               if (AI){state = scr_idle; roll = irandom(100);}
               else {state = scr_move_state;}
               combo_num = 0;
               imgspd = normal_imgspd;
               shader = shd_default;
            }
    }
    /*if image_index == 1.5 or image_index == 2.25{
    var thrail = instance_create(x,y,OBJ_THRAIL);
        thrail.sprite_index = sprite_index;
        thrail.image_alpha = 1;
        thrail.image_xscale = image_xscale;
        thrail.image_yscale = image_yscale;
        thrail.x = x;
        thrail.y = y;
        thrail.image_index = 0;
        thrail.image_speed = image_speed;
        thrail.shader = shd_red;
        thrail.owner = self.id;
   } */
}

if guarding{
    if AI{
        guarding = false;
        state = scr_idle;;
    }else{
        guarding = false;
        state = scr_move_state;
    }
}
if attacking{exit;}

var move_sprite_main = get_3dval(move_array, move_id, 0, 0);//UPDATE
var move_sprite_hitbox = get_3dval(move_array, move_id, 0, 1);
var move_sprite_effect = get_3dval(move_array, move_id, 0, 2);

var move_power = get_3dval(move_array, move_id, 1, 0);
var move_cost = get_3dval(move_array, move_id, 1, 1);
var move_knockback_rate = get_3dval(move_array, move_id, 1, 4);
var move_juggle_rate = get_3dval(move_array, move_id, 1, 5);

/*if curmp < move_cost{
    imgspd = normal_imgspd;
    state = scr_move_state;
    exit;
}*/

if  combo_num == combo_index and !attacking and !action and !guarding{

    //if combo_count>1{ shader = shader23; imgspd = fast_imgspd;}
    //if combo_num == sprite_attack_len+1{move_id=sprite_attack_len-1;imgspd = normal_imgspd;}
    sprite_index = move_sprite_main;
    image_speed = imgspd;
    image_index = 0;
    var hitbox = instance_create(x,y,obj_hitbox);
    hitbox.sprite_index = move_sprite_hitbox;
    if move_knockback_rate > 2{
        move_knockback_rate *= 5;
    }
    hspd = 0;
    spd = walk_spd;
    hitbox.knockback_rate = move_knockback_rate;
    hitbox.juggle_rate = move_juggle_rate;
    hitbox.image_xscale = image_xscale;
    //hitbox.image_yscale = image_yscale*2;
    hitbox.image_speed = imgspd;
    hitbox.pow = 1;
    hitbox.owner = self.id;
    hitbox.effect = move_sprite_effect;
    hitbox.max_hits = 1;
    hitbox.cur_hits = 0;
    //Increment only when index < count
    if (combo_index<combo_count-1){combo_index++;}
    //Execute's in start of combo
    if combo_index==0{
        //curstamina -= move_cost;
    }
    attacking = true;
    action = true;
}

