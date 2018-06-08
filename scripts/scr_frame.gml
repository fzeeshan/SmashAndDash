///scr_frame(spd, depth, life);

txt = instance_create(CENTER_X,CENTER_Y,obj_frame_ext);
with (txt)
{
    padding = 16;
    maxlength = view_wview[0];
    //text = argument0;
    spd = argument0;
    font = fnt;
    
    //text_length = string_length(text);
    //font_size = font_get_size(font);
    
    depth = argument1;
    life = argument2;
    
    //draw_set_font(font);
    //text_width = string_width_ext(text,font_size+(font_size/2), maxlength);
    //text_height = string_height_ext(text,font_size+(font_size/2), maxlength);
    
    boxwidth = CENTER_X/2 + (padding*2);
    boxheight = CENTER_Y/2 + (padding*2);
}
