ini_open(working_directory + "blink.ini");
global.music = ini_read_real("Settings","Music",1);
global.effects = ini_read_real("Settings","Effects",1);
ini_close();
