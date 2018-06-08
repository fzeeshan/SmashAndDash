with(argument0){
    //if dead{
        scr_ini();
        scr_adjust_scale(argument0,2);
        scr_update_sprite();
        scr_ini_stats();
        scr_ini_moves();
        
        team.players_fighting++;
        scr_load_player_stats();
        x = start_pointx;
        y = start_pointy;
        
        scr_idle();
        
    //}
}
