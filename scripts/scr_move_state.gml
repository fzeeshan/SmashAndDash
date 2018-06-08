//Calculating Speed
if dead{
    sprite_index = sprite_dead;
    image_index = image_number -1;
    image_speed = 0;
    exit;
    }

state_name = "move";
fric = 1;

if !remote_player{
    scr_get_input();
    
     // waited key;
    /// performing combo : in step event
    if keyboard_check_pressed( combo_keys[combo_step])combo_step++;
    if (combo_step==array_length_1d(combo_keys)) // if all keys of the combo have been pressed
    {
        // do this stuff
        do_combo(array(0,1,0,2,3));  
        send_action(action_id);
        combo_step = 0;
        exit;
    }
    
    if chain_tap_timer_a1 > 0 {
       chain_tap_timer_a1 -= 1;
    }else{
        chain_count = 0;
    }
    //Check double Lshift
    double_tap_timer_r -= 1;
    double_tap_timer_l -= 1;
    
    if rkey_pressed{
        if double_tap_timer_r > 0{
           // if (dash_key){
                do_dash();
                action_id = DO_DASH;
                send_action(0);
           // }
            exit;
        }
        double_tap_timer_r = (room_speed/4.5)  
    }
    
    if lkey_pressed{
        if double_tap_timer_l > 0{
            //if (dash_key){
                do_dash();
                action_id = DO_DASH;
                send_action(0);
            //}
            exit;
        }
        double_tap_timer_l = (room_speed/4.5)  
    }
    
    
    if (dodge_key){
        do_dodge();
        action_id = DO_DODGE;
        send_action(0);
    }
    if abs(cur_spd) >= run_spd-1{//HEAVY ATK
        if (key1){
            do_single_attack(2);
            action_id = CON_SNGL_GRND_ATK2;
            send_action(2);
        }
        /*if (key2){
            do_single_attack(3);
            action_id = CON_SNGL_GRND_ATK3;
            send_action(3);
        }*/
    }
    if abs(cur_spd) < run_spd{//HEAVY ATK
        if (key1){
            do_single_attack(3);
            action_id = CON_SNGL_GRND_ATK2;
            send_action(3);
        }
        /*if (key2){
            do_single_attack(3);
            action_id = CON_SNGL_GRND_ATK3;
            send_action(3);
        }*/
    }
    if !walking and !running{//LIGHT ATK
        if (key1){
            chain_array = array(0,3);
            do_single_attack(chain_array[chain_count]);
            action_id = CON_SNGL_GRND_ATK0;
            send_action(0);            
            if ukey_check{
                //do_jumpattack(0);
                do_single_attack(4);
                action_id = CON_SNGL_GRND_ATK4;
                send_action(4);
            }
                
            if dkey_check{
                do_single_attack(1);
                action_id = CON_SNGL_GRND_ATK1;
                send_action(1);
            }
        }
        //if (key2){
        //    do_single_attack(1);
        //    action_id = CON_SNGL_GRND_ATK1;
        //    send_action(1);
        //}
    }
    

    
    
    if (mkey1){
        do_missile(0);    
        send_action(0);    
    }
    
    if (mkey1){
        do_aeromissile(0);   
        send_action(0); 
    }
    
    /*if (mkey2){
        do_missiles(array(0,1));
        send_action(action_id);
    }*/
    
    if (combo_key){
        do_combo(array(0,1,0));  //0,2,3
        send_action(action_id);
        /*if curmp > 99{
            //curmp -= 100;
            //cost = 100;
            //alarm[3] = 1;
            combo_num = 0;
            combo_index = 0;
            combo_list = array(0,2,0,2,3);
            move_id = combo_list[0];
            combo_count = array_length_1d(combo_list);
            state = scr_attack;
            send_action(action_id);
        }else{
            
        }*/
    }
    
    /*if (keyboard_check_released(ord("F"))){
        //if curmp > 99{
            //curmp -= 100;
            //cost = 100;
            //alarm[3] = 1;
            combo_num = 0;
            combo_index = 0;
            move_array = combo_move_list1;
            move_array_len = array_length_1d(move_array);
            combo_list = array(0,1,2);
            move_id = combo_list[0];
            combo_count = array_length_1d(combo_list);
            state = scr_combo;
       // }else{
            
        //}
    }*/
    if (guard_key) and curstamina>maxstamina/10{
        if sprite_index == sprite_guard{
            if image_index >= image_number - 1{
                image_speed = 0;
            }
        }
        if sprite_index != sprite_guard{
            sprite_index = sprite_guard;
            guarding = true;
            action = true;
        }
        //do_guard();
        //sprite_index = sprite_guard
        //guarding = true;
    }
    if (guard_key_released){
        sprite_index = sprite_stance;
        guarding = false;
        action = false;
        imgspd = normal_imgspd;
        image_speed = imgspd;
        //state = scr_move_state();
    }
    
    // Check for ground
    if (place_meeting(x, y+1, obj_solid)){
        running = false;
        //vspd = 0;
        // Jumping
        if (jkey){
            if (running){
                spd = run_jump_spd;
            }else{
                spd = walk_spd;
            }
            running = false;
            vspd = -jspd;
            airjump = airjump_count;
            //var jump_effect = instance_create(x,y, obj_effect);
            //jump_effect.sprite_index = spr_jump_dust;
            scr_create_effect(x, y, obj_misc, spr_jump_dust);
            scr_text(choose("JUMPP!","JUMP!"),1,x,y-image_yscale,1,1);
            scr_play_sound(snd_jump,5,.5);
        }
    }else{
        // Gravity 
        //if (vspd < 10){
        //    vspd += grav;
        //}
        
        //if (jkey && vspd < -4){
        //    vspd = -jspd;
       // }
        
        // Check for airjump
        if (airjump > 0 ){
            if (jkey){
                spd = walk_spd;
                running = false;
                vspd = -jspd;
                airjump -=1;
            }
        }
    } 
    
    
    
//if !damaged{   
    //rkey released
    if (rkey_released and !lkey ){
        spd = walk_spd;
        running = false;
        walking = false;
        alarm[2] = 0;
    }
    
    //lkey released
    if (lkey_released and !rkey){
        spd = walk_spd;
        running = false;
        walking = false;
        alarm[2] = 0;
    }
    
    //rkey pressed
    if (rkey and run_key and onground and curstamina > 25){//
        //    curstamina -= 1;
        if !running and curstamina > 0{
            spd = run_spd;
            running = true;
            //alarm[2] = random_range(5,8);
        }
    }
    if (run_key_released){
        spd = walk_spd;
        running = false;
    }
    if (run_key_released){
        spd = walk_spd;
        running = false;
    }
    
    
    
    //lkey pressed
    if (lkey and  run_key and onground and curstamina > 25){// 
        //    curstamina -= 1;
        if !running and curstamina > 0{
            spd = run_spd;
            running = true;
            //alarm[2] = random_range(5,8);
        }
    }
    
    
    // Moving right
    if (rkey and !dashing){
        if (hspd < spd ){
            hspd += fric;
        }else{
            hspd = spd;
            walking = true;
        }
        
        //Left wall jump
        //if (place_meeting(x-1, y, obj_solid) && !place_meeting(x,y+1, obj_solid))
        //    {if (jkey)vspd = -jspd;}
    }

    
    //Moving left
    if (lkey and !dashing){
        if (hspd > -spd){
            hspd -= fric;
        }else{
            hspd = -spd;
            walking = true;
        }
        
        //Left wall jump
        //if (place_meeting(x+1, y, obj_solid) && !place_meeting(x,y+1, obj_solid))
        //    {if (jkey)vspd = -jspd;}
    }
    
    if (rkey  && lkey){
        //spd = walk_spd;
        hspd = 0;
        running = false;
        walking = false;
        alarm[0] = 0;
    }
    
    
    
    // Check for not moving
    
    if ((!rkey && !lkey) || (rkey  && lkey)){
        if (hspd !=0){
            if (hspd < 0){
                hspd += fric;    
            }else{
                hspd -= fric;
            }
        }
    }

//}

}


if curstamina <= 0{
    running = false;
    spd = walk_spd;
}
if (hspd != 0){
    hspd_dir = sign(hspd);
}



// Collisions Start

scr_force();

// Collisions End hspd_dir

// Ledge Grabbing
var was_free = !position_meeting(x+(20*hspd_dir), yprevious-4, obj_solid);
var is_not_free = position_meeting(x+(20*hspd_dir), y-4, obj_solid);
var moving_down = yprevious < y;
/*
if (was_free && is_not_free && moving_down){
    hspd = 0;
    vspd = 0;
    
    // Move against the ledge
    while (!place_meeting(x+hspd_dir, y, obj_solid)){
        x+=hspd_dir;
    }
    // Make sure we are the right height
    
    while(!place_meeting(x+(17*hspd_dir), y-5, obj_solid)){
        y-=1;
    }
    state = scr_ledge_grab_state;
}
*/
// Wall jump
if (hspd_dir <0){
    if (place_meeting(x-1, y, obj_solid) && !place_meeting(x,y+1, obj_solid) and !remote_player)
        {if (jkey && moving_down){vspd = -jspd;}}
}else{
    if (place_meeting(x+1, y, obj_solid) && !place_meeting(x,y+1, obj_solid) and !remote_player)
        {if (jkey && moving_down){vspd = -jspd;}}
}
//if !damaged{
    if xprevious < x{
        image_xscale = scale;
        image_yscale = scale;
    }else if xprevious > x{
        image_xscale = -scale;
        image_yscale = scale;
    }
//}
scr_sprite_controller();



