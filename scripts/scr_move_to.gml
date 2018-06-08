///scr_move_right()
state_name = "move_to";
spd = random_range(1,4);
var hspd = argument0;
var on_wall = place_meeting(x+hspd, y, obj_solid);
if not_on_wall{
    x+= hspd;
    //if irandom(100)==1{scr_jump()}
}else{
    
}

