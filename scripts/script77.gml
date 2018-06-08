state_name = "win";
    if sprite_index == sprite_win{
        if image_index >= image_number-1{
            //imgspd = 0;
            //image_speed = imgspd;
        }
    }
    
    if sprite_index!= sprite_win{
        sprite_index = sprite_win;
        shader = shd_default;
        //scr_apply_force(self.id,0,6,"knockback");
    }
