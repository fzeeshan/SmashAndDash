
if CollisionPointIDs(self.id, other.id,0,0,0,0,0){

        var sfx = instance_create(__x,__y,obj_effect);
        sfx.sprite_index = effect;
        sfx.image_speed = owner.normal_imgspd;
        sfx.image_xscale = owner.image_xscale;
        sfx.image_yscale = owner.image_yscale;
        //sfx.depth = depth+1;
        sfx.owner = owner;
        hit_count--;
    
}

if hit_count<=0{instance_destroy()}

