state_name = "idle";
hspd = 0;

    action = false;
    attacking = false;
    guarding = false;
    dodging = false
    
if AI{ 
    randomize();
    //state = choose(scr_move_right,scr_move_left,scr_idle);
}else{
    state = scr_move_state;
}
scr_force();
scr_sprite_controller();
//
