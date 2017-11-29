/// creates the tiles
contains  = 0
selected  = false
queued    = false
enemyMove = false

_x = 224
_y = 51

N  = instance_nearest(x,       y+(-_y*2), oTile)
NW = instance_nearest(x+(-_x), y+(-_y),   oTile)
NE = instance_nearest(x+(_x),  y+(-_y),   oTile)
S  = instance_nearest(x,       y+(_y*2),  oTile)
SW = instance_nearest(x+(-_x), y+(_y),    oTile)
SE = instance_nearest(x+(_x),  y+(_y),    oTile)

list = ds_list_create()

// adds each tile to the list clockwise
ds_list_add(list, N)
ds_list_add(list, NE)
ds_list_add(list, SE)
ds_list_add(list, S)
ds_list_add(list, SW)
ds_list_add(list, NW)

depth = -y