
if onground and !action and !guarding{
    move_id = argument0;
    state = scr_draw_single_attack;
}
else if (!onground /*and y<yprevious*/) and !action and !guarding{
    move_id = random_range(0,sprite_airattack_len-1);
    state = scr_draw_single_airattack;
    action_id = CON_SNGL_AERL_ATK;
}
