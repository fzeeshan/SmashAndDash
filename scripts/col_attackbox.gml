
if dead{exit}
if self.id == other.owner.id{exit;}
if self.team.id == other.owner.team.id{exit;}
if dashing {exit}
if dodging {exit};
//if self.tag == other.owner.tag{exit;}
if other.id != last_collided_hitbox_id{
   last_collided_hitbox_id = other.id;
   if other.cur_hits >= other.max_hits{with(other.id){instance_destroy()exit;}};
   
    if CollisionPointIDs(self.id, other.id,0,0,0,0,0){
        if other.tag=="missile"{other.hit_count--;}
            
            var X = 1;
            var Y= 10;//(40,20,10,5,2.5,0);
            var Z = 255;//random_range(217,255);
                
            var damage = (((((((2*other.owner.level) / 5 +2) *
                              other.pow * 
                              other.owner.Atk / Def) / 50 +2)
                              *X)
                              *Y/10)
                              *Z)/255;;
                              
                              
            scr_play_sound(other.sound_hit,10,1);
                              /*MOVE POWER*/
           //var damage = ((((((((2*lvl/5+2)*pow*atk)/Def)/50)+2)*X)*Y/10)*Z)/255;
            /*
                    A = attacker's Level
                    B = attacker's Attack or Special
                    C = attack Power
                    D = defender's Defense or Special
                    X = same-Type attack bonus (1 or 1.5)
                    Y = Type modifiers (40, 20, 10, 5, 2.5, or 0)
                    Z = a random number between 217 and 255
            */    
        if !guarding{//IF NOT GUARDING              
        
            curhp -= damage;
            
            var sfx = instance_create(__x,__y,obj_effect);
            sfx.owner = self.id;
            sfx.sprite_index = other.effect;
            sfx.image_speed = other.owner.normal_imgspd;
            sfx.image_xscale = other.owner.image_xscale;
            sfx.image_yscale = other.owner.image_yscale;
            sfx.depth = depth+1;
            
            
            var damage_label = instance_create(__x,__y-sprite_height/2,obj_damage);
            damage_label.damage = damage;    
            damage_label.depth = -3;          
            
            
            if other.knockback_rate <= 1{
                state = scr_damaged;
            }else{
                state = scr_knockedback;
                scr_quake(3,5);
                
                //disable directional key
                lkey = false;
                rkey = false;
                
            }
            scr_apply_force(other.owner,other.knockback_rate,other.juggle_rate,"knockback");
            
            if curhp<=0{
                dead = true;
                state = scr_dead;
                if (team!=noone)team.players_fighting--;
                
                //Write his/her name in death note. XD
                if global.game_mode == GM_LAN_MLT_PLYR{
                    buffer_seek(global.buffer, buffer_seek_start, 0);
                    buffer_write(global.buffer, buffer_u8, 66);
                    buffer_write(global.buffer, buffer_u32, real(playerId));
                    network_send_packet(obj_controller.socket, global.buffer, buffer_tell(global.buffer));
                }
            }
            
            /*distance_to_enemy = sign(other.owner.x - x);
            if distance_to_enemy < 0{
                image_xscale = -scale;
            }else{
                image_xscale = scale;
            }
            */
            if !dead{
                state = scr_damaged;
            }else{
                other.owner.kills+=1;
            }
        }else{
                if curstamina >0{//IF GUARDING
                    var sfx = instance_create(x,y,obj_effect);
                        sfx.owner = self.id;
                        sfx.sprite_index = spr_guard_effect;
                        sfx.image_speed = other.owner.normal_imgspd;
                        sfx.image_xscale = image_xscale;
                        sfx.image_yscale = image_yscale;
                        sfx.depth = -2;
                    curstamina -= maxstamina*.10;
                    curhp -= damage*.15;
                    scr_play_sound(snd_guard_hit2,10,.75);
                    //scr_text("Guard!",.5,x,y,1,2);
                    
                }else if curstamina <=0{//IF GUARDBREAK
                    guarding = false;
                    var sfx = instance_create(__x,__y,obj_effect);
                        sfx.owner = self.id;
                        sfx.sprite_index = other.effect;
                        sfx.image_speed = other.owner.normal_imgspd;
                        sfx.image_xscale = other.owner.image_xscale;
                        sfx.image_yscale = other.owner.image_yscale;
                        sfx.depth = depth+1;
                        
                    scr_play_sound(snd_guardbreak,10,1);
                    imgspd = normal_imgspd;
                    image_speed = imgspd;
                    scr_draw_text("BREAK",x,y-120);
                    curhp -= damage;
                    state = scr_damaged;
                }
            /*var sfx = instance_create(x,y,obj_effect);
                sfx.owner = self.id;
                sfx.sprite_index = other.effect;
                sfx.image_speed = other.owner.image_speed;
                sfx.image_xscale = other.owner.image_xscale;
                sfx.image_yscale = other.owner.image_yscale;
                sfx.depth = depth+1;*/
        }
   other.cur_hits+=1;
    }
    if other.tag == "missile" and other.hit_count<=0{
        //with(other.id){instance_destroy()}
    }
    if other.tag!="missile"{
       // with(other.id){instance_destroy()}
    }
}
