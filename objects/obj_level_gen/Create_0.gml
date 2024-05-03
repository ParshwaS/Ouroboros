randomize()

var _wall_map_id = layer_tilemap_get_id("TileSet");
var _wall_floor = layer_tilemap_get_id("Wall_Floors");
var _tile_decore = layer_tilemap_get_id("Tile_Decore");

_level_no = obj_game_manager.level_no

required_rooms = required_rooms + (_level_no div 15);

width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;

_rooms_width = room_width div (CELL_WIDTH*ROOM_SIZE);
_rooms_height = room_height div (CELL_HEIGHT*ROOM_SIZE);


room_grid_ = ds_grid_create(_rooms_width, _rooms_height);
grid_ = ds_grid_create(width_, height_);
ds_grid_set_region(room_grid_, 0, 0, _rooms_width, _rooms_height, -1);
ds_grid_set_region(grid_, 0, 0, width_, height_, VOID);

_controller_x = _rooms_width div 2;
_controller_y = _rooms_height div 2;

var _random_spwan_room = irandom_range(0,SPAWN_ROOMS-1)

ds_grid_set(room_grid_, _controller_x, _controller_y, _random_spwan_room);

var _total_rooms = 1;

while(_total_rooms != required_rooms) {
	var _dir = irandom(3)
	var _create = false;
	
	var _controller_y_old = _controller_y;
	var _controller_x_old = _controller_x;
	
	switch (_dir) {
		case NORTH:
			if(_controller_y > 1) {
				_controller_y -= 1;
			}
		break;
		case SOUTH:
			if(_controller_y < _rooms_height - 2) {
				_controller_y += 1;
			}
		break;
		case EAST:
			if(_controller_x > 1) {
				_controller_x -= 1;
			}
		break;
		case WEST:
			if(_controller_x < _rooms_width - 2) {
				_controller_x += 1;
			}
		break;
		default:
		break;
	}
	
	var _neighbor = 0;
	
	if(room_grid_[# _controller_x - 1, _controller_y] != -1) {
		_neighbor += 1;
	}
	
	if(room_grid_[# _controller_x + 1, _controller_y] != -1) {
		_neighbor += 1;
	}
	
	if(room_grid_[# _controller_x, _controller_y - 1] != -1) {
		_neighbor += 1;
	}
	
	if(room_grid_[# _controller_x, _controller_y + 1] != -1) {
		_neighbor += 1;
	}
	
	if(_neighbor < 3 and room_grid_[# _controller_x, _controller_y] == -1) {
		_create = true;
	} else {
		_controller_x = _controller_x_old;
		_controller_y = _controller_y_old;
	}
	
	if(_create) {
		var _random_room = irandom_range(SPAWN_ROOMS+BOSS_ROOMS, ds_list_size(global.room_list)-1);
		if(_total_rooms == required_rooms - 1) {
			_random_room = irandom_range(SPAWN_ROOMS, SPAWN_ROOMS+BOSS_ROOMS-1);
		}
		ds_grid_set(room_grid_, _controller_x, _controller_y, _random_room);
		_total_rooms += 1;
	}
}

for(var _i=0; _i < _rooms_width; _i++){
	for(var _j=0; _j < _rooms_height; _j++){
		if(room_grid_[# _i, _j] >= 0){
			ds_grid_set_grid_region(grid_, global.room_list[| room_grid_[# _i, _j]], 0, 0, ROOM_SIZE, ROOM_SIZE, _i * ROOM_SIZE, _j * ROOM_SIZE);
		}
	}
}

for(var _i=0; _i < _rooms_width; _i++){
	for(var _j=0; _j < _rooms_height; _j++){
		if(room_grid_[# _i, _j] != -1 and room_grid_[# _i + 1, _j] != -1) {
			_hallway_x = (_i + 1) * ROOM_SIZE - 1;
			_hallway_y = (_j + 1) * ROOM_SIZE - (ROOM_SIZE / 2);
			ds_grid_set_region(grid_, _hallway_x + 1, _hallway_y - HALLWAY_SIZE / 2 - 1, _hallway_x + 1, _hallway_y + HALLWAY_SIZE / 2 + 1, WALL);
			ds_grid_set_region(grid_, _hallway_x, _hallway_y - HALLWAY_SIZE / 2, _hallway_x + 2, _hallway_y + HALLWAY_SIZE / 2, FLOOR);
		}
		if(room_grid_[# _i, _j] != -1 and room_grid_[# _i, _j + 1] != -1) {
			_hallway_x = (_i + 1) * ROOM_SIZE - (ROOM_SIZE / 2);
			_hallway_y = (_j + 1) * ROOM_SIZE - 1;
			ds_grid_set_region(grid_, _hallway_x - HALLWAY_SIZE / 2 - 1, _hallway_y + 1, _hallway_x + HALLWAY_SIZE / 2 + 1, _hallway_y + 1, WALL);
			ds_grid_set_region(grid_, _hallway_x - HALLWAY_SIZE / 2, _hallway_y, _hallway_x + HALLWAY_SIZE / 2, _hallway_y + 2, FLOOR);
		}
	}
}

for(var _i=0; _i < width_; _i++){
	for(var _j=0; _j < height_; _j++){
		tilemap_set(_wall_map_id,grid_[# _i, _j], _i, _j);
		if(grid_[# _i, _j] != VOID) tilemap_set(_wall_floor, FLOOR_OFFSET, _i, _j);
		if(grid_[# _i, _j] == WALL)
		{
			var _offset = WALL_OFFSET;
			if(_j > 0 and grid_[# _i, _j-1] == WALL) _offset += UP;
			if(_j+1 < height_ and grid_[# _i, _j+1] == WALL) _offset += DOWN;
			if(_i > 0 and grid_[# _i-1, _j] == WALL) _offset += LEFT;
			if(_i+1 < width_ and grid_[# _i+1, _j] == WALL) _offset += RIGHT;
			
			var _onlyFloor = false;
			if(_offset != WALL_OFFSET) {
				_onlyFloor = true;
			}
			
			if(_j > 0 and grid_[# _i, _j-1] == FLOOR) _offset += UP;
			if(_j+1 < height_ and grid_[# _i, _j+1] == FLOOR) _offset += DOWN;
			if(_i > 0 and grid_[# _i-1, _j] == FLOOR) _offset += LEFT;
			if(_i+1 < width_ and grid_[# _i+1, _j] == FLOOR) _offset += RIGHT;

			if(_offset == WALL_OFFSET + UP + DOWN + LEFT + RIGHT) {
				if(grid_[# _i-1, _j] == FLOOR and grid_[# _i, _j-1] == FLOOR) {
					_offset -= UP + DOWN + LEFT + RIGHT;
				} else if(grid_[# _i, _j+1] == FLOOR) {
					_offset -= UP + DOWN + LEFT + RIGHT;
					_offset++;
				}
			}
			
			//if(_offset == WALL_OFFSET + RIGHT or _offset == WALL_OFFSET + LEFT or _offset == WALL_OFFSET + RIGHT + LEFT + DOWN) {
			//	_decore = irandom_range(0,20);
			//	_decore -= 14;
			//	if(_decore < 3) _decore = 0;
			//	tilemap_set(_tile_decore, _decore, _i, _j);
			//}
			
			tilemap_set(_wall_floor, _offset, _i, _j);
		} else if(grid_[# _i, _j] == FLOOR)
		{
			var _offset = FLOOR_OFFSET;		
			if(_j > 0 and grid_[# _i, _j-1] == WALL) _offset += UP;
			if(_j+1 < height_ and grid_[# _i, _j+1] == WALL) _offset += DOWN;
			if(_i > 0 and grid_[# _i-1, _j] == WALL) _offset += LEFT;
			if(_i+1 < width_ and grid_[# _i+1, _j] == WALL) _offset += RIGHT;
			
			if(_offset == FLOOR_OFFSET) {
				var _test = irandom(800 / (_level_no / 30));
				if(_test == 0) {
					instance_create_layer(_i * CELL_WIDTH, _j * CELL_HEIGHT, "Instances", obj_enemy);
				}
			}
			
			if(_offset == FLOOR_OFFSET) {
				_offset = irandom_range(FLOOR_OFFSET+14, FLOOR_OFFSET+15);
			}
			
			if(_offset == FLOOR_OFFSET + LEFT)
			
			tilemap_set(_wall_floor, _offset, _i, _j);
		}
		if(grid_[# _i, _j] == SPAWN) {
			instance_create_layer(_i * CELL_WIDTH - (CELL_WIDTH / 2), _j * CELL_HEIGHT - (CELL_HEIGHT / 2), "Instances", obj_player);
			if(!instance_exists(obj_gun)){
				instance_create_layer(_i * CELL_WIDTH - (CELL_WIDTH / 2), _j * CELL_HEIGHT - (CELL_HEIGHT / 2), "Instances", obj_gun);
			}
		}
		if(grid_[# _i, _j] == OBST) {
			tilemap_set(_wall_floor, FLOOR_OFFSET+14, _i, _j);
			tilemap_set(_tile_decore, irandom_range(8, 10), _i, _j);
			instance_create_layer(_i * CELL_WIDTH, _j * CELL_HEIGHT, "Instances", obj_collision);
		}
		if(grid_[# _i, _j] == MONSTER) {
			instance_create_layer(_i * CELL_WIDTH, _j * CELL_HEIGHT, "Instances", obj_enemy);
		}
		if(grid_[# _i, _j] == BOSS) {
			instance_create_layer(_i * CELL_WIDTH, _j * CELL_HEIGHT, "Instances", obj_next_room);
		}
		if(grid_[# _i, _j] == WALL) {
			instance_create_layer(_i * CELL_WIDTH, _j * CELL_HEIGHT, "Instances", obj_collision);
		}
		if(grid_[# _i, _j] == CHEST) {
			instance_create_layer(_i * CELL_WIDTH, _j * CELL_HEIGHT, "Instances", obj_chest);
		}
	}
}