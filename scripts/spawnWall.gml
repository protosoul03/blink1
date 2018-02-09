// spawn wall of rocks - use loop to spawn at same area place i*64 (sprite height)


for( k = 0; k <3 ; k++)
{
    lgod = instance_create((room_width * 1.5), 64 + (128* k),obj_asteroid_l);
    lgod.speed = global.counter*4;
    lgod.direction = 180;
}
