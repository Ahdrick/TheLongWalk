/// Step event follow the player cooly

x +=(x2-x)/10;
y +=(y2-y)/10;

if(follow != noone)
{
	x2 = follow.x+20;
	y2 = follow.y-40;
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

