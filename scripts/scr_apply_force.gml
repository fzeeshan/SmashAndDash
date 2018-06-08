var target = argument0;
var x_amount = argument1;
var y_amount = argument2;

if argument3 == "knockback"{
    var knockback_direction = point_direction(x,y,target.x,y); 
    if knockback_direction{
        spd = x_amount;
        hspd = spd;
        vspd = -y_amount;
    }else{
        spd = -x_amount;
        hspd = spd;
        vspd = -y_amount;
    }
}

if argument3 == "dash"{
    if image_xscale > 0{
        spd = x_amount;
        hspd = spd;
        vspd = -y_amount;
    }else{
        spd = -x_amount;
        hspd = spd;
        vspd = -y_amount;
    }
}

if argument3 == "dodge"{
    if image_xscale > 0{
        spd = -x_amount;
        hspd = spd;
        vspd = -y_amount;
    }else{
        spd = x_amount;
        hspd = spd;
        vspd = -y_amount;
    }
}

    if xprevious < x{
        image_xscale = scale;
        image_yscale = scale;
    }else if xprevious > x{
        image_xscale = -scale;
        image_yscale = scale;
    }
/*
var target = argument0;
var x_amount = argument1;
var y_amount = argument2;

if argument3 == "knockback"{
    var knockback_direction = point_direction(x,y,target.x,y); 
    if knockback_direction{
        hspd = x_amount;
        vspd = -y_amount;
    }else{
        hspd = -x_amount;
        vspd = -y_amount;
    }
}

if argument3 == "dash"{
    if image_xscale > 0{
        hspd = x_amount;
        vspd = -y_amount;
    }else{
        hspd = -x_amount;
        vspd = -y_amount;
    }
}

if argument3 == "dodge"{
    if image_xscale > 0{
        hspd = -x_amount;
        vspd = -y_amount;
    }else{
        hspd = x_amount;
        vspd = -y_amount;
    }
}
