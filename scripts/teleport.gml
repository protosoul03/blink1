//old code - teleport everything else - to be updated

// identifies all objects spawned in the game
// moves all these items the x distance from the astronaut to the range indicator
// this simulates teleporting

num = instance_number(obj_asteroid_parent);
num1 = instance_number(obj_item_parent);
distance = 0;
distance1 = 0;
indicator = instance_nearest(x,y,obj_range);


//if num < 0 
//exit

for (k = 0; k < num; k++){
    distance = obj_astro.x - indicator.x;
    chosen = instance_find(obj_asteroid_parent,k);
    chosen.x += (distance);
    }
for (j = 0; j < num1; j++){
    distance1 = obj_astro.x - indicator.x;
    selected = instance_find(obj_item_parent,j);
    selected.x += (distance1);
    }
if (indicator.y < 0.5*global.astro_height){
    obj_astro.y = 0.5 * global.astro_height;
    } else if (indicator.y > room_height - (0.5*global.astro_height)) {
    obj_astro.y = room_height - (0.5*global.astro_height);
    } else {
    obj_astro.y = indicator.y;
    }
alarm[0] = cooldown * room_speed;
oncd = 1;
background_x[0] += (0.5*distance);
//sprite_index = spr_astro_cd;
canTP = false;
inTP = false;
audio_play_sound(snd_tp,1,false);

with indicator {
    collisionCheck()
    }

with (indicator){
    instance_destroy();
    }


//global.score -= distance;
