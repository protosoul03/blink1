ini_open(working_directory + "blink.ini");
global.highscore = ini_read_real("Score","HighScore",0);
global.coins = ini_read_real("Score","Coins",0);
ini_close();
