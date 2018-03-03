// spawn diagonal wall - use loop to spawn at i*64 + j*64
var num;
num = choose(1,2)
if num = 1{
    for( k = 0; k <3 ; k++)
    {
        lgod = instance_create((room_width * 1.5)+32+(32*k), 32 + (64* k),obj_asteroid_l);
        lgod.speed = global.counter*4;
        lgod.direction = 180;
    }
}

if num = 2 {
    for( k = 0; k <3 ; k++)
    {
        lgod = instance_create((room_width * 1.5)+32+(32*-k), 32 + (64* k),obj_asteroid_l);
        lgod.speed = global.counter*4;
        lgod.direction = 180;
    }
}
