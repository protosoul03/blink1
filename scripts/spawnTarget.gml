// spawn asteroids targetting player
if (obj_astro.y < 64)
    {
        aster = instance_create((room_width * 1.5), 64 , obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    } else if (obj_astro.y > 320) {
        aster = instance_create((room_width * 1.5), 320 , obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    } else {
        aster = instance_create((room_width * 1.5), irandom_range(obj_astro.y-32,obj_astro.y+32), obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    }
