global.charList = ds_list_create() // list of all playable characters
global.tileList = ds_list_create() // list of every tile
global.moveTileQue = ds_queue_create() // creates the movement path
global.tileQue  = ds_priority_create() // queue based on location to the selected player
global.selected =  noone// what character is selected
global.startMove = false // allows the selected character to move 
global.selecting = false // is the pl
prevSelected = global.selected
