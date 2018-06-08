
//create our player randomly in the room
randomize();
spawn_point = choose(obj_spawnpoint1,obj_spawnpoint2,obj_spawnpoint3,obj_spawnpoint4);
p = instance_create(spawn_point.x, spawn_point.y, obj_localplayer_test);
p.name = global.characterName;
p.playerId = global.playerId;
with(p){
    scr_update_sprite();
    scr_ini_moves();
    scr_ini_stats();
}
p.dead = global.dead;
//tell the server we're joining a game
buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, 6);
buffer_write(global.buffer, buffer_u32, global.playerId);
buffer_write(global.buffer, buffer_string, global.playerName);
buffer_write(global.buffer, buffer_string, global.characterName);
network_send_packet(obj_controller.socket, global.buffer, buffer_tell(global.buffer));
