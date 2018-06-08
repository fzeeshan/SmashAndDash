///scr_attack_state
// Control Direction player facing
if dead{exit}

state_name = "single";

scr_load_moveset("aerial");

if sprite_index == move_sprite_main{
    if image_index >= image_number -1{
            attacking = false;
            running = false;
            walking = false;
            action = false;  
            if (AI){state = scr_idle;}
            else {state = scr_move_state;}
            imgspd = normal_imgspd;
            shader = shd_default;
            
    }
}

if attacking{exit;}

/*if curmp < move_mpcost{
    state = scr_move_state;
    exit;
}*/

if  sprite_index != move_sprite_main and !attacking and !action{
    sprite_index = move_sprite_main;
    image_speed = imgspd;
    image_index = 0;
    vspd = -3;
    var hitbox = instance_create(x,y,obj_hitbox);
    hitbox.sprite_index = move_sprite_hitbox;
    hitbox.knockback_rate = move_knockback_rate;
    hitbox.juggle_rate = move_juggle_rate;
    hitbox.image_xscale = image_xscale;
    //hitbox.image_yscale = image_yscale*2;
    //hitbox.image_speed = image_speed;
    hitbox.pow = move_power;
    hitbox.owner = self.id;
    hitbox.effect = move_sprite_effect;
    hitbox.sound_hit = move_sound_hit;
    hitbox.max_hits = 1;
    hitbox.cur_hits = 0;

    curmp -= move_mpcost;
    
    scr_text(choose("Yah!","Brah!","Hiyah!"),.5,x,y-image_yscale,1,1);
    scr_play_sound(move_sound_draw,1,1);
    attacking = true;
    action = true;
}

