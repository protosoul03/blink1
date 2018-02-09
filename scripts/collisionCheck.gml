closest = instance_nearest(x,y,obj_asteroid_parent);
if position_meeting(x,y,closest) {
    if shield = 1 {
    shield = 0;
    
    with closest {
        instance_destroy();
        }
    } else if shield = 0 {
    instance_destroy();
    instance_create(x,y,obj_gameover);
    instance_create(240,280,obj_restart);
    instance_create(440,280,obj_quit2);
    audio_play_sound(snd_death,1,false);
    global.spawning = 0;

    with closest{
        for(k=0;k<6;k++){
            boom = instance_create(x,y,obj_death);
            boom.speed = 1.5;
            boom.direction = k*60;
        }   
    }
    save_score();
    }
}

nearestPU = instance_nearest(x,y,obj_powerup);
if position_meeting(x,y,nearestPU){
    y = nearestPU.y;
    cooldown = 0.1;
    powerup = 1;
    alarm[1] = 10*room_speed;
    with nearestPU{  
        instance_destroy();
        }
    }
    
nearestSh = instance_nearest(x,y,obj_shield);
if position_meeting(x,y,nearestSh){
    y = nearestSh.y;
    shield = 1;
    with nearestSh{  
        instance_destroy();
        }
    }
