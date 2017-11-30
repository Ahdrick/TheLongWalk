/// Step event follow the player cooly
var char, i

for (i = 0; i < ds_list_size(global.charList); i++) {
	char = ds_list_find_value(global.charList,i)
	follow = char
	break
}

if (follow != char)  
	follow = noone
	
if (follow != noone) {
	x2 = follow.x
	y2 = follow.y
}


x +=(x2-x)/10
y +=(y2-y)/10

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera,vm)
