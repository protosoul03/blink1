// spawn UFO
ufo = instance_create((room_width*1.5), irandom_range(8,376),obj_ufo);
ufo.speed = global.counter * 4.5;
ufo.direction = 180;
