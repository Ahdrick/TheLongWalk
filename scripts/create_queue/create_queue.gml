var tile
for(var i = 0; i < ds_list_size(global.tileList); i++){
	tile = ds_list_find_value(global.tileList, i)
	ds_priority_add(global.tileQue,tile, distance_to_point(tile.x,tile.y))
}