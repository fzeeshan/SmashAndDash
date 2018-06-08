/// debug_console(val1,val2,...)
var o=object_get_name(object_index),e='',s='',i=0;repeat argument_count s+=' '+string(argument[i++]);
switch event_type{
case 0:e='Create';break;
case 1:e='Destroy';break;
case 2:e='Alarm';break;
case 3:e='Step';break;
case 4:e='Keyboard';break;
case 5:e='Mouse';break;
case 6:e='Collision';break;
case 7:e='Other';break;
case 8:e='Draw';break;
case 9:e='KeyRelease';break;
default:e='Room';o='noone';}
show_debug_message(date_time_string(date_current_datetime())+' | '+o+' | '+e+' |'+s);
//Usage & Debug-Console-Output:
