/// Step event follow the player cooly
var char, i

follow = global.selected
	
if (follow != 0 and follow != noone) {
	x2 = follow.x
	y2 = follow.y
} else {
	if (mouse_check_button(mb_left)){
		x2 -= mouse_x - mousexPrev
		y2 -= mouse_y - mouseyPrev
	}	
}


x +=(x2-x)/10
y +=(y2-y)/10

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera, vm)

mousexPrev = mouse_x
mouseyPrev = mouse_y