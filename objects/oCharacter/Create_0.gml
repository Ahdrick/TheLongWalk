// make the default character stuff

tile = instance_nearest(x,y,oTile)
x = tile.x
y = tile.y

ds_list_add(global.charList,self.id)

selected = false;
numMoves = 0;