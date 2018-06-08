
if name == "loyd"{    //Range1
    /*
    SPRITE - main, hbx, effect, msl
    STAT - 0 power, 1 mp_cost, 2 msl_xspd, 3 msl_yspd, 4 knockback_rate, 5 juggle_rate, 6 acceleration
    SOUND - 
    */
    
    range_move_list[0,0] = array(spr_li_range, spr_shockwave, spr_shockwave_exp, spr_shockwave, snd_sword_slash1,snd_sword_draw1);
    range_move_list[0,1] = array(30,0,20,0,5,5, true);
    
    range_move_list[1,0] = array(spr_li_range, spr_shockwave, spr_shockwave_exp, spr_shockwave, snd_explosion ,snd_draw_missile);
    range_move_list[1,1] = array(30,0,20,0,5,5, true);
    
    aerange_move_list[0,0] = array(spr_yusu_aeraygun, spr_mis_aeraygun, spr_ray_explosion, spr_mis_aeraygun);
    aerange_move_list[0,1] = array(30,0,10,10,2,1, false);
        
    //Light1
    melee_move_list[0,0] = array(spr_li_attack2, spr_li_attack2_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    melee_move_list[0,1] = array(25,0,0,0,0,0); 

    //Light2
    melee_move_list[1,0] = array(spr_li_thrust, spr_li_thrust_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    melee_move_list[1,1] = array(10,0,0,0,0,0);
      
    //Heavy2
    melee_move_list[2,0] = array(spr_li_powerthrust, spr_li_powerthrust_hitbox, spr_blood_splatter, snd_sword_slash2,snd_sword_draw2);
    melee_move_list[2,1] = array(50,0,0,0,15,0); 
     
    //Chain1
    melee_move_list[3,0] = array(spr_li_attack3, spr_li_attack3_hitbox, spr_blood_splatter, snd_sword_slash2,snd_sword_draw2);
    melee_move_list[3,1] = array(40,0,0,0,10,0);
    
    //Chain2        
    melee_move_list[4,0] = array(spr_li_attack4, spr_li_attack4_hitbox, spr_blood_splatter, snd_sword_slash2,snd_sword_draw2);
    melee_move_list[4,1] = array(25,0,0,0,10,20);

    
    //Jump
    jump_move_list[0,0] = array(spr_li_jump_attack, spr_li_jump_attack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    jump_move_list[0,1] = array(25,0,0,0,3,15); 
    
    combo_move_list1[0,0] = array(spr_li_thrust1, spr_li_thrust1_hitbox, spr_blood_splatter, snd_sword_thrust1,snd_sword_draw0);
    combo_move_list1[0,1] = array(0,0,0,0,1,0);
    
    combo_move_list1[1,0] = array(spr_li_thrust2, spr_li_thrust2_hitbox, spr_blood_splatter, snd_sword_thrust1,snd_sword_draw0);
    combo_move_list1[1,1] = array(30,0,0,0,1,0);
    
    combo_move_list1[2,0] = array(spr_li_thrust3, spr_li_thrust3_hitbox, spr_blood_splatter, snd_sword_thrust2,snd_sword_draw0);
    combo_move_list1[2,1] = array(30,0,0,0,1,0);
    
    /*combo_move_list1[3,0] = array(spr_li_thrust, spr_li_thrust_hitbox, spr_effect_hit2);
    combo_move_list1[3,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[4,0] = array(spr_li_thrust2, spr_li_thrust2_hitbox, spr_effect_hit);
    combo_move_list1[4,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[5,0] = array(spr_li_thrust3, spr_li_thrust3_hitbox, spr_effect_hit);
    combo_move_list1[5,1] = array(30,0,0,0,0,0);*/
    //Air1
    aerial_move_list[0,0] = array(spr_li_airattack, spr_li_airattack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    aerial_move_list[0,1] = array(10,0,0,0,5,0);
    
    //Air2
    aerial_move_list[1,0] = array(spr_li_airattack, spr_li_airattack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    aerial_move_list[1,1] = array(10,0,0,0,5,0);
    
    player_combo_count = 5;   
}
if name == "wolf"{

    range_move_list[0,0] = array(spr_li_range, spr_shockwave, spr_shockwave_exp, spr_shockwave, snd_sword_slash1,snd_sword_draw1);
    range_move_list[0,1] = array(30,2,15,0,3,5, true);
    
    range_move_list[1,0] = array(spr_li_range, spr_shockwave, spr_shockwave_exp, spr_shockwave, snd_sword_slash1,snd_sword_draw1);
    range_move_list[1,1] = array(30,2,15,0,3,5, true);
    
    aerange_move_list[0,0] = array(spr_yusu_aeraygun, spr_mis_aeraygun, spr_ray_explosion, spr_mis_aeraygun, snd_sword_slash1,snd_sword_draw1);
    aerange_move_list[0,1] = array(30,0,10,-10,2,1, true);
    
    //Light1
    melee_move_list[0,0] = array(spr_wolf_attack, spr_wolf_attack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    melee_move_list[0,1] = array(20,0,0,0,1,1); 
    
    //Light2
    melee_move_list[1,0] = array(spr_wolf_attack, spr_wolf_attack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    melee_move_list[1,1] = array(20,0,0,0,1,1);
    
    //Heavy1
    melee_move_list[2,0] = array(spr_wolf_attack, spr_wolf_attack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    melee_move_list[2,1] = array(20,0,0,0,5,1);
    
    //Heavy2
    melee_move_list[3,0] = array(spr_wolf_attack, spr_wolf_attack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    melee_move_list[3,1] = array(20,0,0,0,10,1);
    
    //Heavy2
    melee_move_list[4,0] = array(spr_wolf_attack, spr_wolf_attack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    melee_move_list[4,1] = array(20,0,0,0,10,1);
    
    //Jump10
    jump_move_list[0,0] = array(spr_li_jump_attack, spr_li_jump_attack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    jump_move_list[0,1] = array(25,0,0,5,10,1); 
    
    combo_move_list1[0,0] = array(spr_yusu_shotgun_start, spr_yusu_shotgun_hitbox_start, spr_effect_hit, snd_sword_slash1,snd_sword_draw1);
    combo_move_list1[0,1] = array(0,0,0,0,0,0);
    
    combo_move_list1[1,0] = array(spr_yusu_shotgun1, spr_yusu_shotgun_hitbox1, spr_effect_hit2, snd_sword_slash1,snd_sword_draw1);
    combo_move_list1[1,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[2,0] = array(spr_yusu_shotgun2, spr_yusu_shotgun_hitbox2, spr_effect_hit, snd_sword_slash1,snd_sword_draw1);
    combo_move_list1[2,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[3,0] = array(spr_yusu_shotgun3, spr_yusu_shotgun_hitbox3, spr_effect_hit2, snd_sword_slash1,snd_sword_draw1);
    combo_move_list1[3,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[4,0] = array(spr_yusu_shotgun4, spr_yusu_shotgun_hitbox4, spr_effect_hit, snd_sword_slash1,snd_sword_draw1);
    combo_move_list1[4,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[5,0] = array(spr_yusu_shotgun_end, spr_yusu_shotgun_hitbox_end, spr_effect_hit, snd_sword_slash1,snd_sword_draw1);
    combo_move_list1[5,1] = array(30,0,0,0,0,0);
    //Air1
    aerial_move_list[0,0] = array(spr_wolf_airattack, spr_wolf_airattack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    aerial_move_list[0,1] = array(20,0,0,0,1,1);
    
    //Air2
    aerial_move_list[1,0] = array(spr_wolf_airattack, spr_wolf_airattack_hitbox, spr_blood_splatter, snd_sword_slash1,snd_sword_draw1);
    aerial_move_list[1,1] = array(20,0,0,0,1,1);
    
    player_combo_count = 1;
}

if name == "yusu"{  
    
    /*
    SPRITE - main, hbx, effect, msl
    STAT - 0 power, 1 mp_cost, 2 msl_xspd, 3 msl_yspd, 4 knockback_rate, 5 juggle_rate, 6 acceleration
    SOUND - 
    */
    
    range_move_list[0,0] = array(spr_yusu_raygun, spr_ray, spr_ray_explosion, spr_ray, snd_sword_slash1,snd_sword_draw1);
    range_move_list[0,1] = array(20,0,20,0,2,1, false);
    
    range_move_list[1,0] = array(spr_yusu_spiritgun, spr_spiritball, spr_spiritball_explosion, spr_spiritball, snd_sword_slash1,snd_sword_draw1);
    range_move_list[1,1] = array(80,0,10,0,10,20, true);
    
    aerange_move_list[0,0] = array(spr_yusu_aeraygun, spr_mis_aeraygun, spr_ray_explosion, spr_mis_aeraygun, snd_sword_slash1,snd_sword_draw1);
    aerange_move_list[0,1] = array(30,0,10,10,2,1, false);
    
    //Light1
    melee_move_list[0,0] = array(spr_yusu_light_punch1, spr_yusu_light_punch1_hitbox, spr_effect_hit, choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    melee_move_list[0,1] = array(25,0,0,0,1,1); 
    
    //Light2
    melee_move_list[1,0] = array(spr_yusu_hpunch, spr_yusu_hpunch_hitbox, spr_effect_hit, choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    melee_move_list[1,1] = array(25,0,0,0,1,1);
    
    //Heavy2
    melee_move_list[2,0] = array(spr_yusu_hpunch2, spr_yusu_hpunch2_hitbox, spr_effect_hit2, choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    melee_move_list[2,1] = array(50,0,0,0,7,0);    
    
    //Heavy1
    melee_move_list[3,0] = array(spr_yusu_hkick, spr_yusu_hkick_hitbox, spr_effect_hit2, choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    melee_move_list[3,1] = array(50,0,0,0,7,0);
    
    //Heavy2
    melee_move_list[4,0] = array(spr_yusu_upper1, spr_yusu_upper1_hitbox, spr_effect_hit2,choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    melee_move_list[4,1] = array(50,0,0,0,7,10);
        //Light1
    jump_move_list[0,0] = array(spr_li_jump_attack, spr_li_jump_attack_hitbox, spr_blood_splatter);
    jump_move_list[0,1] = array(25,0,0,5,10,1); 
    
//    //Combo1
//    melee_move_list1[3,0] = array(spr_yusu_hpunch, spr_yusu_hpunch_hitbox, spr_effect_hit);
//    melee_move_list1[3,1] = array(50,0,0,0,3,1);
    
    combo_move_list1[0,0] = array(spr_yusu_shotgun_start, spr_yusu_shotgun_hitbox_start, spr_effect_hit,choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    combo_move_list1[0,1] = array(0,0,0,0,0,0);
    
    combo_move_list1[1,0] = array(spr_yusu_shotgun1, spr_yusu_shotgun_hitbox1, spr_effect_hit2,choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    combo_move_list1[1,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[2,0] = array(spr_yusu_shotgun2, spr_yusu_shotgun_hitbox2, spr_effect_hit,choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    combo_move_list1[2,1] = array(30,0,0,0,1,0);
    
    combo_move_list1[3,0] = array(spr_yusu_shotgun3, spr_yusu_shotgun_hitbox3, spr_effect_hit2,choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    combo_move_list1[3,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[4,0] = array(spr_yusu_shotgun4, spr_yusu_shotgun_hitbox4, spr_effect_hit,choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    combo_move_list1[4,1] = array(30,0,0,0, 15,0);
    
    combo_move_list1[5,0] = array(spr_yusu_shotgun_end, spr_yusu_shotgun_hitbox_end, spr_effect_hit,choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    combo_move_list1[5,1] = array(30,0,0,0,0,0);
    
    //Air1
    aerial_move_list[0,0] = array(spr_yusu_airpunch, spr_yusu_airpunch_hitbox, spr_blood_splatter, choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    aerial_move_list[0,1] = array(30,0,0,0,1,-20);
    
    //Air2
    aerial_move_list[1,0] = array(spr_yusu_airpunch, spr_yusu_airpunch_hitbox, spr_blood_splatter, choose(snd_melee_hit0,snd_melee_hit1), choose(snd_melee_draw1,snd_melee_draw2));
    aerial_move_list[1,1] = array(0,0,0,0,0,-10);
    
    player_combo_count = 5;  
}


if name == "dragon"{  
    
    /*
    SPRITE - main, hbx, effect, msl
    STAT - 0 power, 1 mp_cost, 2 msl_xspd, 3 msl_yspd, 4 knockback_rate, 5 juggle_rate, 6 acceleration
    SOUND - 
    */
    
    range_move_list[0,0] = array(spr_yusu_raygun, spr_ray, spr_ray_explosion, spr_ray);
    range_move_list[0,1] = array(20,0,20,0,2,1, false);
    
    range_move_list[1,0] = array(spr_yusu_spiritgun, spr_spiritball, spr_spiritball_explosion, spr_spiritball);
    range_move_list[1,1] = array(80,0,10,0,10,20, true);
    
    aerange_move_list[0,0] = array(spr_yusu_aeraygun, spr_mis_aeraygun, spr_ray_explosion, spr_mis_aeraygun);
    aerange_move_list[0,1] = array(30,0,10,10,2,1, false);
    //Light1
    melee_move_list[0,0] = array(spr_yusu_light_punch1, spr_yusu_light_punch1_hitbox, spr_effect_hit);
    melee_move_list[0,1] = array(25,0,0,0,1,1); 
    
    //Light2
    melee_move_list[1,0] = array(spr_yusu_hpunch, spr_yusu_hpunch_hitbox, spr_effect_hit);
    melee_move_list[1,1] = array(25,0,0,0,1,1);
    
    //Heavy2
    melee_move_list[2,0] = array(spr_yusu_hpunch2, spr_yusu_hpunch2_hitbox, spr_effect_hit2);
    melee_move_list[2,1] = array(50,0,0,0,7,1);    
    
    //Heavy1
    melee_move_list[3,0] = array(spr_yusu_hkick, spr_yusu_hkick_hitbox, spr_effect_hit2);
    melee_move_list[3,1] = array(50,0,0,0,7,1);
    
    //Heavy2
    melee_move_list[4,0] = array(spr_yusu_upper1, spr_yusu_upper1_hitbox, spr_effect_hit2);
    melee_move_list[4,1] = array(50,0,0,0,5,10);
        //Light1
    jump_move_list[0,0] = array(spr_li_jump_attack, spr_li_jump_attack_hitbox, spr_blood_splatter);
    jump_move_list[0,1] = array(25,0,0,5,10,1); 
    
//    //Combo1
//    melee_move_list1[3,0] = array(spr_yusu_hpunch, spr_yusu_hpunch_hitbox, spr_effect_hit);
//    melee_move_list1[3,1] = array(50,0,0,0,3,1);
    
    combo_move_list1[0,0] = array(spr_yusu_shotgun_start, spr_yusu_shotgun_hitbox_start, spr_effect_hit);
    combo_move_list1[0,1] = array(0,0,0,0,0,0);
    
    combo_move_list1[1,0] = array(spr_yusu_shotgun1, spr_yusu_shotgun_hitbox1, spr_effect_hit2);
    combo_move_list1[1,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[2,0] = array(spr_yusu_shotgun2, spr_yusu_shotgun_hitbox2, spr_effect_hit);
    combo_move_list1[2,1] = array(30,0,0,0,1,0);
    
    combo_move_list1[3,0] = array(spr_yusu_shotgun3, spr_yusu_shotgun_hitbox3, spr_effect_hit2);
    combo_move_list1[3,1] = array(30,0,0,0,-1,0);
    
    combo_move_list1[4,0] = array(spr_yusu_shotgun4, spr_yusu_shotgun_hitbox4, spr_effect_hit);
    combo_move_list1[4,1] = array(30,0,0,0, 15,0);
    
    combo_move_list1[5,0] = array(spr_yusu_shotgun_end, spr_yusu_shotgun_hitbox_end, spr_effect_hit);
    combo_move_list1[5,1] = array(30,0,0,0,0,0);
    
    //Air1
    aerial_move_list[0,0] = array(spr_yusu_airpunch, spr_yusu_airpunch_hitbox, spr_blood_splatter);
    aerial_move_list[0,1] = array(30,0,0,0,1,-20);
    
    //Air2
    aerial_move_list[1,0] = array(spr_yusu_airpunch, spr_yusu_airpunch_hitbox, spr_blood_splatter);
    aerial_move_list[1,1] = array(0,0,0,0,0,-10);
    
    player_combo_count = 5;  
}
sprite_attack_len = array_height_2d(melee_move_list);
sprite_airattack_len = array_height_2d(aerial_move_list);
