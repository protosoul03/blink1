// spawn asteroids targetting player
if (obj_astro.y < global.astro_height)
    {
        aster = instance_create((room_width * 1.5), 0.5*global.asteroid_height , obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    } else if (obj_astro.y > room_height - global.astro_height) {
        aster = instance_create((room_width * 1.5), room_height - (0.5*global.asteroid_height) , obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    } else {
        aster = instance_create((room_width * 1.5), irandom_range(obj_astro.y-(0.5*sprite_height),obj_astro.y+(0.5*sprite_height)), obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    }
