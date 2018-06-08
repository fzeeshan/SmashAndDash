
if dodging{
state_name = "dodging";
    scr_apply_force(self.id,dodge_spd,0,"dodge");
    scr_create_thrail(.5);
    scr_force();
    scr_sprite_controller();
}
