if !guarding and !attacking and curmp >= 25{
    if (onground){
        cost = 25;
        alarm[3] = 1;
        move_id = argument0;
        state = scr_draw_missile;
        action_id = CON_SNGL_GRND_MSL;
    }
}
