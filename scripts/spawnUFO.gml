// spawn UFO which zig zags
ufo = instance_create((room_width*1.5), irandom_range(0.5*global.ufo_height,room_height-(0.5*gloal.ufo_height)),obj_ufo);
ufo.speed = global.counter * 4.5;
ufo.direction = 180;
