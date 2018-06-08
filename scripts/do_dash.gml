if onground and !action and !dashing and curstamina >= 25{

    dashing = true;
    state = scr_dash;
    curstamina -= 25;
    alarm[0] = 7;
    var dust = scr_create_effect(x,y,obj_effect,spr_dash_dust);
    dust.image_xscale = image_xscale;
}
