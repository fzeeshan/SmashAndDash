var inst;
inst = instance_position(mouse_x, mouse_y, obj_Pause_Button);
if inst != noone
   {
   with (inst) image_index=1;
   instance_create(room_width / 2, 0, obj_Menu);
   }
