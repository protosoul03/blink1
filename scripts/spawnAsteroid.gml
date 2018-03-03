// spawns meteor (large asteroid)
meteor = instance_create((room_width*1.5),irandom_range(0.5*global.asteroid_height,room_height-(0.5*global.asteroid_height)),obj_meteor);
meteor.speed = global.counter*3;
meteor.direction = 180;
