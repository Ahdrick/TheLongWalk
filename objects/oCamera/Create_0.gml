/// creation code
/// sets aspect ratio

ideal_width  = 0
ideal_height = display_get_height()

aspect_ratio = display_get_width()/display_get_height()

ideal_width  = round(ideal_height*aspect_ratio)

if(ideal_width & 1)
	ideal_width++

camera = camera_create()
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(ideal_width,ideal_height,1,10000)

camera_set_view_mat(camera,vm)
camera_set_proj_mat(camera,pm)

view_camera[0] = camera

surface_resize(application_surface,ideal_width,ideal_height)
window_set_size(ideal_width,ideal_height)

alarm[0] = 1

follow = noone

x2 = x
y2 = y

mousexPrev = 0
mouseyPrev = 0