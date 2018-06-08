//if guarding{exit;}
if global.paused == 1{
    exit;
}
// Check for ground
if (!place_meeting(x, y+1, obj_solid)){
    // Gravity Pull    
    if (vspd < 10){
        vspd += grav;
        onground = false;
    }
}

// Vertical Collisions
if (place_meeting(x, y+vspd, obj_solid)){
    while (!place_meeting(x, y+sign(vspd*scale), obj_solid)){
        y+=sign(vspd);
    }
    //airjump = 1;
    //sprite_index = sprite_landing_stance;
    onground = true;
    vspd = 0;
    
    scr_play_sound(snd_landed,1,.12);
    scr_text(choose("Landed!"),1,x,y-image_yscale,1,1);
}

// Move Vertically
if attacking{
    y += vspd*.50;
}
else{
    y += vspd;
}
