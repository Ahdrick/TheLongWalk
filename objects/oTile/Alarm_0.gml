
#region Finding the neighbors

if position_meeting(x,       y+(-_y*2), oTile)
	N  = instance_nearest(x,       y+(-_y*2), oTile)
else
	N = noone
	
if position_meeting(x+(-_x), y+(-_y),   oTile)
	NW = instance_nearest(x+(-_x), y+(-_y),   oTile)
else
	NW = noone
	
if position_meeting(x+(_x),  y+(-_y),   oTile)
	NE = instance_nearest(x+(_x),  y+(-_y),   oTile)
else
	NE = noone
	
if position_meeting(x,       y+(_y*2),  oTile)
	S  = instance_nearest(x,       y+(_y*2),  oTile)
else
	S = noone
	
if position_meeting(x+(-_x), y+(_y),    oTile)
	SW = instance_nearest(x+(-_x), y+(_y),    oTile)
else
	SW = noone
	
if position_meeting(x+(_x),  y+(_y),    oTile)
	SE = instance_nearest(x+(_x),  y+(_y),    oTile)
else
	SE = noone

#endregion

#region Adds each tile to the list clockwise

ds_list_add(list, N)
ds_list_add(list, NE)
ds_list_add(list, SE)
ds_list_add(list, S)
ds_list_add(list, SW)
ds_list_add(list, NW)

#endregion