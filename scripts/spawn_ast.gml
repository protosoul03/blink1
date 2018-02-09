alarm[0] = spawn_rate;
var num;
num = irandom_range(1,100);
indicator_exists = instance_exists(obj_range);
//spawn_rate += spawn_increase;
counter += 0.1;
//var num;
//num = irandom_range(1,global.asteroidMax);
if num <= 5 && global.total > 60{
    meteor = instance_create((room_width*1.5),192,obj_meteor);
    meteor.speed = 3;
    meteor.direction = 180;
    } else if num > 5 && num < 25 && global.total > 30{
    ufo = instance_create((room_width*1.5), irandom_range(8,376),obj_ufo);
    ufo.speed = 5;
    ufo.direction = 180;
    } else {
    if (obj_astro.y < 64)
    {
        aster = instance_create((room_width * 1.5), 64 , obj_asteroid_l);
        aster.speed = counter*4;
        aster.direction = 180;
    } else if (obj_astro.y > 320) {
        aster = instance_create((room_width * 1.5), 320 , obj_asteroid_l);
        aster.speed = counter*4;
        aster.direction = 180;
    } else {
        aster = instance_create((room_width * 1.5), irandom_range(obj_astro.y-32,obj_astro.y+32), obj_asteroid_l);
        aster.speed = counter*4;
        aster.direction = 180;
    } 
}
