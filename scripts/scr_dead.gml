state_name = "dead";
    if sprite_index == sprite_dead{
        if image_index >= image_number-1{
            imgspd = 0;
            image_speed = imgspd;
        }
    }
    
    if sprite_index!= sprite_dead{
        sprite_index = sprite_dead;
        shader = shd_default;
        scr_apply_force(self.id,0,6,"knockback");
    }
