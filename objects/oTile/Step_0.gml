if position_meeting(mouse_x,mouse_y,global.selected) and
   mouse_check_button_pressed(mb_left)
		selecting = true

if selecting and position_meeting(mouse_x,mouse_y,self){
	selected = true
	ds_queue_enqueue(global.moveTileQue,self)
	
}
if selecting and mouse_check_button_released(mb_left) and 
   position_meeting(mouse_x,mouse_y,self){
	destination = true
	global.startMove = true
	selecting  = false
}
if global.startMove
	selecting = false