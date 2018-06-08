///scr_ledge_grab_state
var dkey = keyboard_check(ord("S"));
var jkey = keyboard_check_pressed(vk_space);
if (jkey){
    vspd = -jspd;
    state = scr_move_state;
}

if (dkey){
    state = scr_move_state;
}
