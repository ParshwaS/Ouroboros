function spawn_room1(_base_room){
	var _spawn_room_1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_spawn_room_1, _base_room)

	ds_grid_set(_spawn_room_1, ROOM_SIZE div 2, ROOM_SIZE div 2, SPAWN)
	
	return _spawn_room_1;
}

function spawn_room2(_base_room){
	var _spawn_room_1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

	ds_grid_copy(_spawn_room_1, _base_room)

	ds_grid_set(_spawn_room_1, ROOM_SIZE div 2 - 4, ROOM_SIZE div 2, SPAWN)
	
	return _spawn_room_1;
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
