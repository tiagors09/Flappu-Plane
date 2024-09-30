image_xscale += .01;
image_yscale += .01;

image_alpha -= .01;

if(image_alpha <= 0.0) instance_destroy();