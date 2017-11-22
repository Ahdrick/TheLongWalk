if position_meeting(mouse_x,mouse_y,global.selected) and
   mouse_check_button_pressed(mb_left)
		selecting = true
		
if selecting and mouse_check_button_released(mb_left){
   position_meeting(mouse_x,mouse_y,self){
		destination = true
		ds_queue_enqueue(global.moveTileQue,self)
		global.startMove = true;
   }
   selecting = false
}
	
if selecting and position_meeting(mouse_x,mouse_y,self){
	selected = true
	ds_queue_enqueue(global.moveTileQue,self)
}