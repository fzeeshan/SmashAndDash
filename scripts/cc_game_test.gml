scr_showNotification("Joined game world!");

//Search in death note.
buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, 67);
buffer_write(global.buffer, buffer_u32, global.playerId);
network_send_packet(obj_controller.socket, global.buffer, buffer_tell(global.buffer));
scr_showNotification("requesting death list.");


