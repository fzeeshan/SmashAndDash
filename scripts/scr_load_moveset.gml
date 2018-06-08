if (argument0 == "melee"){
    var move_list = melee_move_list;
}else if (argument0 == "aerial"){
    var move_list = aerial_move_list;
}

move_sprite_main = get_3dval(move_list, move_id, 0, 0);
move_sprite_hitbox = get_3dval(move_list, move_id, 0, 1);
move_sprite_effect = get_3dval(move_list, move_id, 0, 2);
move_sound_hit = get_3dval(move_list, move_id, 0, 3);
move_sound_draw = get_3dval(move_list, move_id, 0, 4);
    
move_power = get_3dval(move_list, move_id, 1, 0);
move_mpcost = get_3dval(move_list, move_id, 1, 1);
move_knockback_rate = get_3dval(move_list, move_id, 1, 4);
move_juggle_rate = get_3dval(move_list, move_id, 1, 5);

