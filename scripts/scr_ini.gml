last_collided_hitbox_id = 0;
    var move_sprite_main, move_sprite_hitbox, move_sprite_effect, move_sound_hit, move_sound_draw;
    
    var move_power, move_mpcost, move_knockback_rate, move_juggle_rate;
    is_solid = true;
double_tap_timer = 0
double_tap_timer_l = 0;
double_tap_timer_r = 0;//Timer to check for double tap of key
chain_array = array(0);
chain_count = 0;


chain_tap_timer_a1 = 0;

//mydepth = -100;
kills = 0;
airjump_count = 1;
airjump = airjump_count;
playerId = " ";
action_id = " ";
remote_player = false;
distance_to_enemy = 0;
onattack_range = false;
roll = 0;
alarm[1] = 0;
alarm[4] = 15;

scale = 1;
image_alpha = 1;
image_xscale = scale;
image_yscale = scale;
grav = 1.5;
jspd = 13;
spd = 5;



walk_spd = spd;
run_spd = spd*2;
run_jump_spd = spd*1.5;
dash_spd = spd*4;
dodge_spd = spd*3;
cur_spd = x-xprevious;
kbspd = 5;
vspd = 0;
hspd = 0;
fric = 1;
moving_right = 0;
hspd_dir = 1;
walking = false;
chasing = false;
normal_imgspd = .5;
fast_imgspd = 1;
imgspd = normal_imgspd;
image_speed = imgspd;
combo_count = 0;
combo_num = 0;
combo_index = 0;
i = 0;
last_i = 0;



maxhp = 200;
curhp = maxhp;
maxmp = 100;
curmp = maxmp;
maxstamina = 100;
curstamina = maxstamina;
guarding = false;

dead = false;
action = false;
dashing = false;
can_dash = true;
running = false;
dodging = false;
damaged = false;
attacking = false;
stucked = false;
onground = false;
onattack_range = false;
onmove_range = false;

level = 10;
is_solid = false;
state_name = "blank";
//name = choose("loyd", "wolf","yusu");
//scr_update_sprite();
sprite_attack_index = 0;

randomize()
sprite_array[0,0] = 0;
shader = shd_default;

