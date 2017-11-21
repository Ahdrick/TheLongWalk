tile = instance_nearest(x,y,oTile)
if selected {
	if keyboard_check_pressed(vk_up){
		tile.contains = 0
		tile = instance_nearest(x,y-140,oTile)
	}
	if keyboard_check_pressed(vk_down){
		tile.contains = 0;
		tile = instance_nearest(x,y+140,oTile)
	}
	if keyboard_check_pressed(vk_left){
		tile.contains = 0;
		tile = instance_nearest(x-140,y,oTile)
	}
	if keyboard_check_pressed(vk_right){
		tile.contains = 0;
		tile = instance_nearest(x+140,y,oTile)
	}
	if instance_exists(tile){
		x = tile.x
		y = tile.y
	}
}

tile.contains = id

if mouse_check_button_pressed(mb_left){
	if position_meeting(mouse_x,mouse_y,self)
		selected = true
	else
		selected = false
}