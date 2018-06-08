if action or dead {exit;}

state_name = "jump";
if (place_meeting(x, y+1, obj_solid) and onground and !dead ){
    //airjump = 2;
    vspd = 0;
    // Jumping
    vspd = -jspd;
//    scr_create_effect(x, y, obj_effect, spr_jump_dust);
    //hspd = argument0;

}else{
    //state = choose(scr_jump);
    // Gravity 
    //vspd += grav;
}
//JUMPING
// Move Vertically
//if !onground{y += vspd;}

scr_sprite_controller();

/*    if hspd>0{
        hspd = spd;    
    }else{
        hspd = -spd;
    }
