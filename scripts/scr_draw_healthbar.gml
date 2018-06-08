if curhp>0{
    hp = (curhp / maxhp);
    draw_healthbar(x-15,y+8,x+15,y+10,hp*100,c_black,c_lime,c_lime,0,1,1);
    //draw_healthbar(20,10,room_width/2,30,hp*100,c_black,c_lime,c_lime,0,1,1);
    if remote_player{exit}
    mp = (curmp / maxmp);
    draw_healthbar(x-15,y+11,x+15,y+12,mp*100,c_black,c_aqua,c_aqua,0,1,1);
    stamina = (curstamina / maxstamina);
    draw_healthbar(x-15,y+13,x+15,y+14,stamina*100,c_black,c_yellow,c_yellow,0,1,1);
    
}
