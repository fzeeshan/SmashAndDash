var text = argument0;
var xx = argument1;
var yy = argument2;
with (obj_message)
{
    instance_destroy();
}

var notification = instance_create(xx, yy, obj_text);
notification.message = text;
notification.font = fnt_powerbold;
notification.color = c_red;
