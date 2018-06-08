if dashing{
    state_name = "dashing";
    scr_apply_force(self.id,dash_spd,0,"dash");//dash_spd
    scr_create_thrail(.5);
    scr_force();
    scr_sprite_controller();
}
