alarm[0] = spawn_rate;
var num;
num = irandom_range(1,100);
lul = irandom_range(1,100);
indicator_exists = instance_exists(obj_range);
//spawn_rate += spawn_increase;
global.counter += 0.05;

if global.total > 90 {
    if num <= 10 && (indicator_exists = false){
        spawnTarget();
        }
    if num <= 10 && (indicator_exists = true){
        spawnIndicator();
        }
    if num > 10 && num <= 20 {
        spawnRandom();
        }
    if num > 20 && num <=50 {
        spawnTwo();
        }
    if num > 50 && num <= 70 {
        spawnWall();    
    }
    if num > 70 && num <= 80 {
        spawnDiagonal();
    }
    if num > 80 && num <= 90 {
        spawnUFO();
    }
    if num > 90 && num <= 100{
        spawnAsteroid();
    }
} else if global.total > 45 {
    if num <= 30 && (indicator_exists = false){
        spawnTarget();
        }
    if num <= 30 && (indicator_exists = true){
        spawnIndicator();
        }
    if num > 30 && num <= 60 {
        spawnRandom();
        }
    if num > 60 && num <= 80 {
        spawnTwo();    
    }
    if num > 80 && num <= 100 {
        spawnWall();
    }
} else {
    if num <= 30{
        spawnRandom();
        }
    if (num > 40 && num <= 100) && (indicator_exists = false){
        spawnTarget();
        }
    if (num > 40 && num <= 100) && (indicator_exists = true){
        spawnIndicator();
        }

}

if lul <= 5 {
    spawnShield();
    } else if lul > 5 && lul <= 10 {
    spawnPowerup();
    } else if lul > 10 && lul <= 15 {
    spawnAmmo();
    }
