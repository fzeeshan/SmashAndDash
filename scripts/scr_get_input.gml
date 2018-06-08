/// Script move state

/*global.up = "W";
global.down = "S";
global.left = "A";
global.right = "D";

global.attack1 = "J";
global.attack2 = "K";

global.jump = "I";
global.run = vk_shift;
global.guard = vk_space;
*/

rkey = keyboard_check(ord(global.right));
lkey = keyboard_check(ord(global.left));
ukey_pressed = keyboard_check_pressed(ord(global.up));
ukey_check = keyboard_check(ord(global.up));
ukey_released = keyboard_check_released(ord(global.up));

dkey_pressed = keyboard_check_pressed(ord(global.down));
dkey_check = keyboard_check(ord(global.down));
dkey_released = keyboard_check_released(ord(global.down));

rkey_pressed = keyboard_check_pressed(ord(global.right));
rkey_check = keyboard_check(ord(global.right));
rkey_released = keyboard_check_released(ord(global.right));

lkey_pressed = keyboard_check_pressed(ord(global.left));
lkey_check = keyboard_check(ord(global.left));
lkey_released = keyboard_check_released(ord(global.left));

run_key = keyboard_check(global.run);
run_key_released = keyboard_check_released(global.run);
dash_key = keyboard_check_pressed(ord("E"));
dodge_key = keyboard_check_pressed(ord("Q"));
charge_key = keyboard_check_pressed(ord("U"));
jkey = keyboard_check_pressed(ord(global.jump));
key1 = keyboard_check_pressed(ord(global.attack1));
//key2 = keyboard_check_pressed(ord(attack2));
//heavy_key1 = keyboard_check_pressed(ord("U"));
//heavy_key2 = keyboard_check_pressed(ord("I"));
mkey1 = keyboard_check_pressed(ord(global.attack2));
//mkey2 = keyboard_check_pressed(ord("U"));
combo_key = keyboard_check_pressed(ord("O"));
guard_key = keyboard_check_pressed(global.guard);
guard_key_released = keyboard_check_released(global.guard);

