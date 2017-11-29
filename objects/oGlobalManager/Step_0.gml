if mouse_check_button_released(mb_left) and global.selecting{
	global.selecting = false
	if !ds_queue_empty(global.moveTileQue)
		global.startMove = true	
}
