// spawns meteor (large asteroid)
meteor = instance_create((room_width*1.5),irandom_range(144,240),obj_meteor);
meteor.speed = global.counter*3;
meteor.direction = 180;
