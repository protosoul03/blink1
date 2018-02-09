global.currentscore = (global.minutes * 60) + global.seconds;
if global.currentscore > global.highscore
{
    global.highscore = global.currentscore;
}

global.coins += global.coins;

ini_open(working_directory + "blink.ini");
ini_write_real("Score","HighScore",global.highscore);
ini_write_real("Score","Coins",global.coins);
ini_close();




