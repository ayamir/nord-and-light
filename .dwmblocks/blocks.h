//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/	 	/*Update Interval*/	/*Update Signal*/
    {"   ", "~/.dwmblocks/scripts/kernel",		    360,		        2},

	{" 🔺 ", "~/.dwmblocks/scripts/upt",		        60,		            2},

	{"   ", "~/.dwmblocks/scripts/pacupdate",		360,		        9},
	
	{"   ", "~/.dwmblocks/scripts/memory",	        6,		            1},

	{"   ", "~/.dwmblocks/scripts/volume",			2,		            10},

	{"   ", "~/.dwmblocks/scripts/clock",			5,		            0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
