///findPaths(neighbor,numMoves)

var myTile   = argument0
var numMoves = argument1
var nList    = myTile.list
var neighbor, i = 0

repeat(6) {
	neighbor = ds_list_find_value(nList, i)
	if (neighbor != noone and neighbor.contains == 0){
		neighbor.enemyMove = true
		if(numMoves > 0)
			findPaths(neighbor, (numMoves - 1))
	}
	i++
}