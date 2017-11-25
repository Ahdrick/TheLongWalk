if position_meeting(mouse_x,mouse_y,self) and
   contains == global.selected and
   mouse_check_button(mb_left)
		global.selecting = true
	
if global.selecting and position_meeting(mouse_x,mouse_y,self){
	if !queued{
		queued = true
		ds_queue_enqueue(global.moveTileQue,self)
		selected = true
	}
}
if global.selecting and mouse_check_button_released(mb_left) and 
   position_meeting(mouse_x,mouse_y,self){
	destination = true
	if !global.startMove
		global.startMove = true
	global.selecting  = false
}