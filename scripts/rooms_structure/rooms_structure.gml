function spawn_room1(_base_room){
	var _spawn_room1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_spawn_room1, _base_room)

	ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 3, 4, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 3, ROOM_SIZE div 2 - 3, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 3, ROOM_SIZE div 2 - 2, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 3, ROOM_SIZE div 2 - 1, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 2, 4, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 2, ROOM_SIZE div 2 - 1, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 1, 4, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 1, ROOM_SIZE div 2 - 3, SPAWN);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 - 1, ROOM_SIZE div 2 - 1, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 , 4, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 , ROOM_SIZE div 2 - 2, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 , ROOM_SIZE div 2 - 1, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 + 1, 4, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 + 1, ROOM_SIZE div 2 - 2, WALL);

    ds_grid_set(_spawn_room1, ROOM_SIZE div 2 + 3, ROOM_SIZE div 2 + 2, WALL);

    ds_grid_set(_spawn_room1, 12, ROOM_SIZE div 2 + 2, WALL);

    ds_grid_set(_spawn_room1, 12, ROOM_SIZE div 2 + 3, WALL);

    ds_grid_set(_spawn_room1, 12, 12, WALL);

    ds_grid_set(_spawn_room1, 13, ROOM_SIZE div 2 + 2, WALL);

   
	return _spawn_room1;
}

function spawn_room2(_base_room){
	var _spawn_room2 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_spawn_room2, _base_room)

	ds_grid_set(_spawn_room2, ROOM_SIZE div 2 - 3, 4, WALL);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 - 3, ROOM_SIZE div 2 - 3, WALL);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 - 3, ROOM_SIZE div 2 - 2, WALL);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 - 3, ROOM_SIZE div 2 - 1, WALL);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 - 3, ROOM_SIZE div 2 , WALL);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 - 2, ROOM_SIZE div 2 , WALL);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 - 1, ROOM_SIZE div 2 - 2, SPAWN);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 - 1, ROOM_SIZE div 2 , WALL);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 , ROOM_SIZE div 2 , WALL);

    ds_grid_set(_spawn_room2, ROOM_SIZE div 2 + 1, ROOM_SIZE div 2 , WALL);

   
	return _spawn_room2;
}



function boss_room1(_base_room){
	var _spawn_room_1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_spawn_room_1, _base_room)

	ds_grid_set(_spawn_room_1, ROOM_SIZE div 2, ROOM_SIZE div 2, BOSS)
	
	return _spawn_room_1;
}

function boss_room2(_base_room){
	var _spawn_room_1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_spawn_room_1, _base_room)

	ds_grid_set(_spawn_room_1, ROOM_SIZE div 2 - 4, ROOM_SIZE div 2, BOSS)
	
	return _spawn_room_1;
}

function simple_room1(_base_room){
	var _spawn_room_1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_spawn_room_1, _base_room)

	ds_grid_set(_spawn_room_1, ROOM_SIZE div 2, ROOM_SIZE div 2, MONSTER)
	
	return _spawn_room_1;
}

function simple_room2(_base_room){
	var _simple_room2 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_simple_room2, _base_room)

	ds_grid_set(_simple_room2, 4, 2, WALL);

    ds_grid_set(_simple_room2, 4, 3, WALL);

    ds_grid_set(_simple_room2, 4, 4, WALL);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 - 3, 2, WALL);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 - 3, 4, WALL);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 - 2, 2, WALL);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 - 2, 3, CHEST);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 - 2, ROOM_SIZE div 2 + 1, MONSTER);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 - 1, 2, WALL);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 + 2, ROOM_SIZE div 2 - 2, WALL);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 + 2, ROOM_SIZE div 2 - 1, WALL);

    ds_grid_set(_simple_room2, ROOM_SIZE div 2 + 2, ROOM_SIZE div 2 , WALL);

   
	return _simple_room2;
}

function simple_room3(_base_room){
	var _simple_room3 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_simple_room3, _base_room)

	ds_grid_set(_simple_room3, 4, 4, WALL);

    ds_grid_set(_simple_room3, 4, ROOM_SIZE div 2 - 3, WALL);

    ds_grid_set(_simple_room3, 4, ROOM_SIZE div 2 - 2, WALL);

    ds_grid_set(_simple_room3, 4, ROOM_SIZE div 2 - 1, WALL);

    ds_grid_set(_simple_room3, 4, ROOM_SIZE div 2 , WALL);

    ds_grid_set(_simple_room3, 4, ROOM_SIZE div 2 + 1, WALL);

    ds_grid_set(_simple_room3, 4, ROOM_SIZE div 2 + 2, WALL);

    ds_grid_set(_simple_room3, 4, ROOM_SIZE div 2 + 3, WALL);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 - 2, ROOM_SIZE div 2 + 2, MONSTER);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 - 1, ROOM_SIZE div 2 - 1, CHEST);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 1, ROOM_SIZE div 2 - 3, MONSTER);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 3, 4, WALL);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 3, ROOM_SIZE div 2 - 3, WALL);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 3, ROOM_SIZE div 2 - 2, WALL);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 3, ROOM_SIZE div 2 - 1, WALL);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 3, ROOM_SIZE div 2 , WALL);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 3, ROOM_SIZE div 2 + 1, WALL);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 3, ROOM_SIZE div 2 + 2, WALL);

    ds_grid_set(_simple_room3, ROOM_SIZE div 2 + 3, ROOM_SIZE div 2 + 3, WALL);

   
	return _simple_room3;
}

function simple_room4(_base_room){
	var _simple_room4 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_simple_room4, _base_room)

	ds_grid_set(_simple_room4, 4, 2, WALL);

    ds_grid_set(_simple_room4, 4, 3, WALL);

    ds_grid_set(_simple_room4, 4, 4, WALL);

    ds_grid_set(_simple_room4, ROOM_SIZE div 2 - 3, 2, WALL);

    ds_grid_set(_simple_room4, ROOM_SIZE div 2 - 3, 3, MONSTER);

    ds_grid_set(_simple_room4, ROOM_SIZE div 2 - 2, 2, WALL);

    ds_grid_set(_simple_room4, ROOM_SIZE div 2 , ROOM_SIZE div 2 - 2, CHEST);

    ds_grid_set(_simple_room4, ROOM_SIZE div 2 + 3, 13, WALL);

    ds_grid_set(_simple_room4, ROOM_SIZE div 2 + 3, 14, WALL);

    ds_grid_set(_simple_room4, 12, 13, MONSTER);

    ds_grid_set(_simple_room4, 12, 14, WALL);

    ds_grid_set(_simple_room4, 13, 12, WALL);

    ds_grid_set(_simple_room4, 13, 14, WALL);

    ds_grid_set(_simple_room4, 14, 12, WALL);

    ds_grid_set(_simple_room4, 14, 13, WALL);

    ds_grid_set(_simple_room4, 14, 14, WALL);

   
	return _simple_room4;
}