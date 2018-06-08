///scr_attack_state
// Control Direction player facing
state_name = "attack";

if sprite_index == sprite_attack1{
    if image_index >= image_number -1{
        attacking = false;
        state = scr_move_state;
    }
}

if attacking{exit}

if sprite_index != sprite_attack1{
    sprite_index = sprite_attack1
    
    //image_speed = .3;
    image_index = 0;
    var hitbox = instance_create(x,y,obj_hitbox);
    hitbox.sprite_index = sprite_attack1_hitbox;
    hitbox.image_xscale = image_xscale;
    hitbox.image_speed = image_speed;
    hitbox.effect = sprite_attack1_effect;
    hitbox.damage = 1;
    hitbox.owner = self.id;
    attacking = true;
}
