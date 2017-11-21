/// find_neighbors( x, y, obj, radius )
///
/// generates an array of all nearby tiles

var _x, _y, _obj, _radius, _inst, _list, _num, list;

_x = argument0;
_y = argument1;
_obj = argument2;
_radius = argument3;
_inst = noone;
_num = instance_number(_obj);

// First, make a list of all instances of the given type
for (var i = 0; i < _num; i++ )
    _list[i] = instance_find(_obj, i);

var j = 0
for(var i = 0; i < _num; i++){
	if distance_to_object(_list[i]) < _radius{
		list[j] = _list[i]
		j++
	}
}
return list