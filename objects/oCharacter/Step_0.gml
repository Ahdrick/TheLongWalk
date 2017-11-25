if global.startMove and selected
	if !ds_queue_empty(global.moveTileQue){
		if completedMove{
			tile = ds_queue_dequeue(global.moveTileQue)
			tile.contains = self.id
			tile.selected = false
			tile.destination = false
			completedMove = false
		}
	}
	else
		global.startMove = false
if !completedMove{
	x = lerp(x, tile.x, .15)
	y = lerp(y, tile.y, .15)
}
if point_distance(x,y,tile.x,tile.y) < 1{
	x = tile.x
	y = tile.y
	completedMove = true
	tile.queued = false
}

if global.startMove
	global.selecting = false

if mouse_check_button_pressed(mb_left){
	if position_meeting(mouse_x,mouse_y,self){
		selected = true
		global.selected = self.id
	}
	else{
		selected = false
		global.selected = 0
	}
}
