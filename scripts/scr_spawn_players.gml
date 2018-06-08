//scr_spawn_player()
var team_names = argument0;
var team_count = array_length_1d(argument0);
var player_object = argument1;
var team = argument3.id;
randomize();
rand = irandom(100);
//var team = instance_create(x+rand,y,TEAM);
for(var n = 0; n<team_count; n++){
    
    var p = instance_create(argument2.x,argument2.y,player_object);
    p.start_pointx = argument2.x;
    p.start_pointy = argument2.y;
    p.name = team_names[n];
    scr_adjust_scale(p,2);
    team.players[n] = p.id;
    p.team = team.id;
    with(p){
        scr_update_sprite();
        scr_ini_moves();
        scr_ini_stats();
    }
}
return team.id;
