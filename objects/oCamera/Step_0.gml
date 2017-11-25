/// Step event follow the player cooly
var char
for(var i = 0; i < ds_list_size(global.charList); i++){
	char = ds_list_find_value(global.charList,i)
//	if char.selected
		follow = char
}

x +=(x2-x)/10;
y +=(y2-y)/10;

if(follow != noone)
{
	x2 = follow.x;
	y2 = follow.y;
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

