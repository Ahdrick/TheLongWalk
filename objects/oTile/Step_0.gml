if position_meeting(mouse_x,mouse_y,self) and
   contains == global.selected and
   mouse_check_button(mb_left)
		global.selecting = true
	
if global.selecting and position_meeting(mouse_x,mouse_y,self) and
	global.selected{
	if !queued and contains != global.selected{
		queued = true
		ds_queue_enqueue(global.moveTileQue,self)
		selected = true
	}
}


   