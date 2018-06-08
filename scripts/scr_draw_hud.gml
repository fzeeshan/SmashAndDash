with(obj_player){
    if curhp>0{
        var sx = 20;
        var sy = 30;
        hp = (curhp / maxhp);
        //draw_healthbar(x-15,y+8,x+15,y+10,hp*100,c_black,c_lime,c_lime,0,1,1);        
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        draw_set_color(c_white);
        draw_set_font(fnt);
        
        draw_set_font(fnt_arial12);
        draw_healthbar(sx,sy,view_wview[0]/2,sy+20,hp*100,c_dkgray,c_lime,c_lime,0,0,3);

        draw_set_color(c_black);
        draw_text(sx,sy,"HP : " + string(curhp) + " / " + string(maxhp));
        if remote_player{exit}
        mp = (curmp / maxmp);
        //draw_healthbar(x-15,y+11,x+15,y+12,mp*100,c_black,c_aqua,c_aqua,0,1,1);
        draw_set_font(fnt_arial8);
        draw_healthbar(sx,sy+25,view_wview[0]/2,sy+35,mp*100,c_dkgray,c_aqua,c_aqua,0,0,1);
        draw_text(sx+2,sy+25,"MP : " + string(curmp) + " / " + string(maxmp));
        stamina = (curstamina / maxstamina);
        draw_healthbar(sx,sy+40,view_wview[0]/2,sy+50,stamina*100,c_dkgray,c_yellow,c_yellow,0,0,1);
        draw_text(sx+2,sy+40,"ST : " + string(curstamina) + " / " + string(maxstamina));
        
        //draw_healthbar(1,44,room_width/2,54,team.rounds_won*100,c_dkgray,c_red,c_red,0,0,1);
        draw_set_font(fnt);
        //draw_healthbar(x-15,y+13,x+15,y+14,stamina*100,c_black,c_yellow,c_yellow,0,1,1);
        if global.game_mode == 3{exit}
        draw_text(sx,sy-25,string_upper(name)+" SCORE : " + string(team.rounds_won) + " / " + string(GAME_CONTROLLER.rounds_to_win));
    }
}
