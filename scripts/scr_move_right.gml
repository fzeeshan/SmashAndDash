if dead or action or damaged or dodging or dashing or guarding{exit;}
fric = 1;
///scr_move_right()
state_name = "move_right";
//spd = random_range(1,4);
//spd = walk_spd;
if irandom(100)==1{running = true; spd = run_spd; alarm[2]=30;}
hspd = spd;
var not_on_wall = !place_meeting(x+hspd, y, obj_solid);
var not_on_ledge = instance_position(x+(16)+1, y+(16)+2, obj_solid);
var on_player = place_meeting(x+hspd, y, OBJ_PLAYER_BASE);


//attacking = false;
if (not_on_wall && not_on_ledge &&  tag == "enemy") or (not_on_wall && tag == "moving_platform"){
    if irandom(100)==1{scr_jump()}
    x+= hspd;
    scr_sprite_controller();
}else if !not_on_wall or !not_on_ledge{
   state = choose(scr_move_left);
}

if (xprevious<x){
    image_xscale = scale;
    image_yscale = scale;
} else if (xprevious>x){
    image_xscale = -scale;
    image_yscale = scale;
}
