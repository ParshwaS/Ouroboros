#macro CELL_WIDTH 16
#macro CELL_HEIGHT 16
#macro ROOM_SIZE 20
#macro HALLWAY_SIZE 6
#macro HALLWAY_WIDTH 1

#macro SPAWN_ROOMS 2
#macro BOSS_ROOMS 2
#macro SHOP_ROOMS 2

#macro VOID 1
#macro WALL 2
#macro FLOOR 3
#macro HALLWAY 4
#macro SPAWN 5
#macro CHEST 6
#macro MONSTER 7
#macro SHOP 8
#macro BOSS 9

#macro NORTH 0
#macro SOUTH 1
#macro EAST 2
#macro WEST 3

#macro UP 8
#macro DOWN 4
#macro LEFT 2
#macro RIGHT 1

#macro WALL_OFFSET 8
#macro FLOOR_OFFSET 24

global.room_list = ds_list_create()

var _base_room = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

ds_grid_set_region(_base_room, 0, 0, ROOM_SIZE, ROOM_SIZE, VOID)
ds_grid_set_region(_base_room, HALLWAY_WIDTH, HALLWAY_WIDTH, ROOM_SIZE-HALLWAY_WIDTH, ROOM_SIZE-HALLWAY_WIDTH, WALL)
ds_grid_set_region(_base_room, HALLWAY_WIDTH+1, HALLWAY_WIDTH+1, ROOM_SIZE-HALLWAY_WIDTH-1, ROOM_SIZE-HALLWAY_WIDTH-1, FLOOR)


var _spawn_room_1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

ds_grid_copy(_spawn_room_1, _base_room)

ds_grid_set(_spawn_room_1, ROOM_SIZE div 2, ROOM_SIZE div 2, SPAWN)

ds_list_add(global.room_list, _spawn_room_1)

var _spawn_room_2 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

ds_grid_copy(_spawn_room_2, _base_room)

ds_grid_set(_spawn_room_2, ROOM_SIZE div 2 - 4, ROOM_SIZE div 2, SPAWN)

ds_list_add(global.room_list, _spawn_room_2)

var _boss_room_1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

ds_grid_copy(_boss_room_1, _base_room)

ds_grid_set(_boss_room_1, ROOM_SIZE div 2, ROOM_SIZE div 2, BOSS)

ds_list_add(global.room_list, _boss_room_1)

var _boss_room_2 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

ds_grid_copy(_boss_room_2, _base_room)

ds_grid_set(_boss_room_2, ROOM_SIZE div 2, ROOM_SIZE div 2, BOSS)

ds_list_add(global.room_list, _boss_room_2)

var _room_1 = ds_grid_create(ROOM_SIZE, ROOM_SIZE)

ds_grid_copy(_room_1, _base_room)

ds_grid_set(_room_1, ROOM_SIZE div 2, ROOM_SIZE div 2, MONSTER)

ds_list_add(global.room_list, _room_1)