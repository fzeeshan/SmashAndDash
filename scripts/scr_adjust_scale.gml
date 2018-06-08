///Adjust speed base on scale
with(argument0){
    scale = argument1;
    image_xscale = scale;
    image_yscale = scale;
    grav = grav*scale;
    jspd = jspd*scale;
    spd = spd*scale;
    walk_spd = walk_spd*scale;;
    run_spd = run_spd*scale;;
    dash_spd = dash_spd*scale;
    dodge_spd = dodge_spd*scale;
}
