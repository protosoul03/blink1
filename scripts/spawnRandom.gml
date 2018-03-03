//spawn asteroids at random positions

aster = instance_create((room_width * 1.5), irandom_range(0.5*global.asteroid_height,room_height-(0.5*global.asteroid_height)), obj_asteroid_l);
aster.speed = global.counter*4;
aster.direction = 180;
