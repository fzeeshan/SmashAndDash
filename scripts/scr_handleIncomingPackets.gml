var buffer = argument[0];
var msgId = buffer_read(buffer, buffer_u8);//find the tag

switch(msgId)
{
    case 1://latency response
        var time = buffer_read(buffer, buffer_u32);//read in the time from the server
        latency = current_time - time;//update our latency
    break;
    
    case 2://registration response
        var response = buffer_read(buffer, buffer_u8);
        
        switch(response)
        {
            case 0://failure
                scr_showNotification("Registration failed! Username already exists!");
            break;
            
            case 1://success
                room_goto(rm_login);
            break;
        }
    break;
    
    case 3://login response
        var response = buffer_read(buffer, buffer_u8);
        scr_showNotification("RESP: "+string(response));
            
        switch(response)
        {
            case 0://failure
                scr_showNotification("Login failed! Username doesn't exist or password is incorrect!");
            break;
            
            case 1://success
                room_goto(rm_select_char_online);
            break;
        }
    break;
    
    case 68://registration response
        var response = buffer_read(buffer, buffer_u8);
        
        switch(response)
        {
            case 0://failure
                scr_showNotification("Character Registration Success!");
            break;
            
            case 1://success
                //room_goto(rm_login);
            break;
        }
    break;
    case 4://player ID response
        //scr_load();
        global.playerId = buffer_read(buffer, buffer_u32);
        scr_showNotification("Our playerId has been received!");
        show_message("Connected!");
        room_goto(rm_loginRegisterSelect);
    break;   

    
    case 5://remote player disconnect response
        var pId = buffer_read(buffer, buffer_u32);
        with (obj_remoteplayer_test)
        {
            if (remotePlayerId == pId)
            {
                instance_destroy();
            }
        }
    break;
    
    case 6://room change response
        var pId = buffer_read(buffer, buffer_u32);
        var pName = buffer_read(buffer, buffer_string);
        var cName = buffer_read(buffer, buffer_string);
        var pDead = buffer_read(buffer, buffer_bool);
        
        var instance = noone;

        with (obj_remoteplayer_test)
        {
            if (remotePlayerId == pId)
            {
                instance = id;
                dead = pDead;
            }
        }
        
        if (instance == noone)//if this player doesn't yet exist
        {
            //only if we exist in the gameworld
            if (instance_exists(obj_localplayer_test))
            {
                //create a remote player
                var remotePlayer = instance_create(room_width/2, room_height/2, obj_remoteplayer_test);
                remotePlayer.remotePlayerId = pId;
                remotePlayer.remotePlayerName = pName;
                remotePlayer.name = cName;
                remotePlayer.dead = pDead;
                with(remotePlayer){
                    scr_update_sprite();
                    scr_ini_moves();
                    scr_ini_stats();
                }
            }
        }
        else//otherwise destroy this player as he/she is leaving
        {
            with (instance)
            {
                instance_destroy();
            }
        }
    break;
    
    case 7://player movement update response
        var pId = buffer_read(buffer, buffer_u32);
        var xx = buffer_read(buffer, buffer_f32);
        var yy = buffer_read(buffer, buffer_f32);
        
        with (obj_remoteplayer_test)
        {
            if (remotePlayerId == pId)
            {
                x = xx;
                y = yy;
            }
        }
    break;
    
    case 8://player update response
        var pId = buffer_read(buffer, buffer_u32);
        var pScore = buffer_read(buffer, buffer_u32);
        scr_showNotification(pScore);
        with (obj_remoteplayer_test)
        {
            if (remotePlayerId == pId)
            {
                remotePlayerScore = pScore;
            }
        }
        with (obj_localplayer_test)
        {
            if (global.playerId == pId)
            {
                global.playerScore = pScore;
            }
        }
        
    break;
    
    case 9://player update response
        var pId = buffer_read(buffer, buffer_u32);
        var pActionId = buffer_read(buffer, buffer_string);
        with (obj_remoteplayer_test)
        {
            if (remotePlayerId == pId)
            {
                action_id = pActionId;
                switch(action_id){
                    case CON_SNGL_GRND_ATK0:
                        do_single_attack(0);
                    break; 
                    case CON_SNGL_GRND_ATK1:
                        do_single_attack(1);
                    break; 
                    case CON_SNGL_GRND_ATK2:
                        do_single_attack(2);
                    break; 
                    case CON_SNGL_GRND_ATK3:
                        do_single_attack(3);
                    break; 
                    case CON_SNGL_GRND_ATK4:
                        do_single_attack(4);
                    break; 
                    case CON_SNGL_GRND_MSL:
                        do_missile(0);    
                    break;   
                    case  CON_SNGL_AERL_MSL:
                        do_aeromissile(0);   
                    break;    
                    case  CON_CMB_ATK:
                        do_combo(array(0,1,0,2,3));   
                    break;  
                    case  CON_CMB_MSL:
                        do_missiles(array(0,1));
                    break;  
                    case  DO_DASH:
                        do_dash();
                    break;  
                    case  DO_DODGE:
                        do_dodge();
                    break;  
                }
            }
        }
        //with (obj_localplayer_test)
        //{
         //   if (global.playerId == pId)
         //   {
        //        global.playerScore = pScore;
        //    }
        //}
        
    break;
    
    case 67://registration response
        var response = buffer_read(buffer, buffer_u8);
        
        switch(response)
        {
            case 0://failure
                scr_showNotification("ALIVE!");
                global.dead = false;
                scr_respawn_player();
            break;
            
            case 1://success
                scr_showNotification("DEAD!");
                global.dead = true;
                scr_respawn_player();
            break;
        }
    break;
    
    case 69://player update response
        var msg = buffer_read(buffer, buffer_string);
        scr_showNotification(msg);
    break;
}
