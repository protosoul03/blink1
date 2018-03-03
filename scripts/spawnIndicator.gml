// spawn asteroid where the indicator is
if instance_exists(obj_range) = false
exit

if (obj_range.y < global.asteroid_height)
    {
        aster = instance_create((room_width * 1.5), 0.5*global.asteroid_height , obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    } else if (obj_range.y > room_height - global.asteroid_height) {
        aster = instance_create((room_width * 1.5), room_height - (0.5*global.asteroid_height) , obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    } else {
        aster = instance_create((room_width * 1.5), irandom_range(obj_range.y-(0.5*global.astro_height),obj_range.y+(0.5*global.astro_height)), obj_asteroid_l);
        aster.speed = global.counter*4;
        aster.direction = 180;
    } 
