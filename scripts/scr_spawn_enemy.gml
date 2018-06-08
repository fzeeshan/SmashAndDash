//scr_spawn_enemy()
var name = argument0;
var player_object = argument1;
var point = argument2;
//var team = instance_create(x+rand,y,TEAM);
    
    var p = instance_create(point.x,point.y,player_object);
    p.start_pointx = point.x;
    p.start_pointy = point.y;
    p.name = name;
    p.team = global.team2;
    scr_adjust_scale(p,1.5);
    with(p){
        level = argument3;
        scr_update_sprite();
        scr_ini_moves();
        scr_ini_stats();
    }
