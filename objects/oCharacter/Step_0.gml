if (global.startMove and id = global.selected) {
	if (!ds_queue_empty(global.moveTileQue)) {
		if (completedMove) {
			tile.contains = 0
			tile = ds_queue_dequeue(global.moveTileQue)
			tile.selected = false
			completedMove = false
		}
	} else
		global.startMove = false
}

if (!completedMove) {
	x = lerp(x, tile.x, .15)
	y = lerp(y, tile.y, .15)
}

if (point_distance(x,y,tile.x,tile.y) < 1) {
	x = tile.x
	y = tile.y
	tile.contains = self.id
	tile.queued   = false
	completedMove = true
}

if (global.startMove)
	global.selecting = false

if (mouse_check_button_pressed(mb_left)) {
	if (position_meeting(mouse_x,mouse_y,self))
		global.selected = self.id
	if (!position_meeting(mouse_x,mouse_y,oCharacter))
		global.selected = 0
}
if (self.id = global.selected)
	selected = true
else 
	selected = false
