if (!onground and y<yprevious and curmp >= 25){    
        cost = 25;
        alarm[3] = 1;
        move_id = argument0;
        state = scr_draw_aeromissile;
        action_id = CON_SNGL_AERL_MSL;
}
