
if (Current_Character ==1){
	draw_text(x +80,y-50,"Class: Wanderer")
	draw_sprite(sWanderer,0,x,y)
	global.Player1= oWanderer;
	global.Player1_class= "Wanderer";
	global.Player1_health= 10;

	}

if (Current_Character ==2){
	draw_text(x +80,y-50,"Class: Oni")
	draw_sprite(sOni,0,x,y)
	global.Player1= oOni;
	global.Player1_class= "Oni";
	global.Player1_health= 12;
	}
	
if (Current_Character ==3){
	draw_text(x +80,y-50,"Class: Keeper")
	draw_sprite(sKeeper,0,x,y)
	global.Player1= oKeeper;
	global.Player1_class= "Keeper";
	global.Player1_health= 5;
	}
	
if (Current_Character ==4){
	draw_text(x +80,y-50,"Class: Adventure")
	draw_sprite(sAdventurer,0,x,y)
	global.Player1= oAdventurer;
	global.Player1_class= "Adventure";
	global.Player1_health= 11;
	}
	
if (Current_Character ==5){
	draw_text(x +80,y-50,"Class: UnicornKnight")
	draw_sprite(sUnicornKnight,0,x,y)
	global.Player1= oUnicornKnight;
	global.Player1_class= "Knight";
	global.Player1_health= 15;
	}
		
if (Current_Character ==6){
	draw_text(x +80,y-50,"Class: Deserter")
	draw_sprite(sDeserter,0,x,y)
	global.Player1= oDeserter;
	global.Player1_class= "Deserter";
	global.Player1_health= 13;
	}
	
	
	