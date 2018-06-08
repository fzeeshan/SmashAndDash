if (onground) and curmp >= 100 and !action{
    cost = 100;
    alarm[3] = 1;
//if !guarding{
    combo_num = 0;
    combo_index = 0;
    combo_list = argument0;
    move_id = combo_list[0];
    combo_count = array_length_1d(combo_list);
    if (onground){state = scr_draw_missiles;
    action_id = CON_CMB_MSL;}
    else if (!onground and y<yprevious){state = scr_draw_missiles;
    action_id = CON_CMB_MSL;}
}
//}
