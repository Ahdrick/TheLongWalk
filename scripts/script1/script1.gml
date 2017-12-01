
with (oDraw) {
	// creates the first instance
	if(!ds_exists(depthGrid, ds_type_grid)) {
	depthGrid = ds_grid_create(2,1)
	depthGrid[# 0,0] = other
	depthGrid[# 1,0] = other.y
	} else {
		
	}
}