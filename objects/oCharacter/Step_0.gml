if selected {
	global.selected = self.id
}
if global.startMove{
	for(var i = 0; i < ds_queue_size(global.moveTileQue) + 2; i++){
		tile = ds_queue_dequeue(global.moveTileQue)
		x = tile.x
		y = tile.y
		tile.contains = self.id
		tile.selected = false
		tile.destination = false
	}
	ds_queue_clear(global.moveTileQue)
	global.startMove = false
}

if mouse_check_button_pressed(mb_left){
	if position_meeting(mouse_x,mouse_y,self)
		selected = true
	else
		selected = false
}