// Horizontal Collisions
if guarding{exit;}//dead or 
var on_wall = place_meeting(x+hspd, y, obj_solid);
if (on_wall){
    while (!place_meeting(x+sign(hspd), y, obj_solid)){
        x+=sign(hspd);
    }
    hspd = 0;
}

// Move Horizontally

x += hspd;
/*dashing = false;
if image_xscale > 0 {
    if hspd>spd{
        dashing = true;
    }
}else{
    if hspd<-spd{
        dashing = true;
    }
}
