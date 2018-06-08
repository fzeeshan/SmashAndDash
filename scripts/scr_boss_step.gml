image_xscale = owner.scale;
image_yscale = owner.scale;
x = owner.x;
y = owner.y;
if (xprevious<x){
    image_xscale = scale;
    //image_yscale = scale;
} else if (xprevious>x){
    image_xscale = -scale;
    //image_yscale = scale;
}
