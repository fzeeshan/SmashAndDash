if onground  and !action and !dodging and curstamina >= 25{ 
    var dust = scr_create_effect(x,y,obj_effect,spr_dash_dust);
    dust.image_xscale = -image_xscale;  
    dodging = true;
    state = scr_dodge;
    curstamina -= 25;
    alarm[0] = 7;
}
