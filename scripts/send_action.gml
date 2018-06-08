if global.game_mode == GM_LAN_MLT_PLYR{
    //move_towards_point(mouse_x,mouse_y,1);
    //update coordinates
    buffer_seek(global.buffer, buffer_seek_start, 0);
    buffer_write(global.buffer, buffer_u8, 9);
    buffer_write(global.buffer, buffer_u32, playerId);
    buffer_write(global.buffer, buffer_string, action_id);
    network_send_packet(obj_controller.socket, global.buffer, buffer_tell(global.buffer));
    action_id = " ";
}
