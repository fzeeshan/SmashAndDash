if name == "wolf"{   
    basehp = 1;
    baseAtk = 3;
    baseDef = 1;
    baseSpAtk = 0;
    baseSpDef = 0;
    baseSpd = 30;
}
if name == "loyd"{   
    basehp = 99;
    baseAtk = 80;
    baseDef = 99;
    baseSpAtk = 85;
    baseSpDef = 105;
    baseSpd = 10;
}
if name == "yusu"{   
    basehp = 90;
    baseAtk = 90;
    baseDef = 80;
    baseSpAtk = 100;
    baseSpDef = 105;
    baseSpd = 15;
}
if name == "dragon"{   
    basehp = 200;
    baseAtk = 200;
    baseDef = 200;
    baseSpAtk = 50;
    baseSpDef = 100;
    baseSpd = 5;
}   
maxhp = (basehp*2)*level/100+10+level;
curhp = maxhp;
Atk = (baseAtk*2)*level/100+5/*+Modifers*/;
Def = (baseDef*2)*level/100+5;
SpDef = (baseSpDef*2)*level/100+5;
SpAtk =  (baseSpAtk*2)*level/100+5;
Spd = (baseSpd*1)*level/100+5;
    
//spd = floor(Spd/2);
//act_speed = Spd/100;
