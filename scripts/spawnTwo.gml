// spawn in two random spots with the same x
num = irandom_range(1,3);
if num = 1{
    lgod1 = instance_create((room_width * 1.5), 0.5*global.asteroid_height ,obj_asteroid_l);
    lgod1.speed = global.counter*4;
    lgod1.direction = 180;
    lgod2 = instance_create((room_width * 1.5), 1.5*global.asteroid_height ,obj_asteroid_l);
    lgod2.speed = global.counter*4;
    lgod2.direction = 180;
} 
if num = 2{
    lgod1 = instance_create((room_width * 1.5), 0.5*global.asteroid_height ,obj_asteroid_l);
    lgod1.speed = global.counter*4;
    lgod1.direction = 180;
    lgod2 = instance_create((room_width * 1.5), 2.5*global.asteroid_height ,obj_asteroid_l);
    lgod2.speed = global.counter*4;
    lgod2.direction = 180;
} 
if num = 3{
    lgod1 = instance_create((room_width * 1.5), 1.5*global.asteroid_height ,obj_asteroid_l);
    lgod1.speed = global.counter*4;
    lgod1.direction = 180;
    lgod2 = instance_create((room_width * 1.5), 2.5*global.asteroid_height ,obj_asteroid_l);
    lgod2.speed = global.counter*4;
    lgod2.direction = 180;
} 
