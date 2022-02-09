extends Node

var tile
var tile_size = 64

var move = [600,100]
var tile_pos

var tile_updata

var tile_list = {
	'0':load('res://tile/tile_land/TileLand_Air.tscn'),
	'1':load('res://tile/tile_land/TileLand_Grass.tscn')
}


func tilepos(x,y,move):
	var tile_pos = [ y*(tile_size/2)-x*(tile_size/2)+move[0],y*(tile_size/4)+x*(tile_size/4)+move[1] ]

	return tile_pos

func _ready():
	for x in range(0,Global.tile_map[0].size(),1):
		for y in range(0,Global.tile_map.size(),1):
			for tile_all in range(0,2,1):
			
				if Global.tile_map[x][y] == tile_all:
					var air = tile_list[str(tile_all)].instance()
					air.position = Vector2(y*(tile_size/2)-x*(tile_size/2)+move[0],y*(tile_size/4)+x*(tile_size/4)+move[1])
					add_child(air,true)
					
					air.set_name(str(x)+str(y))
					print(air.get_name())
					
func _physics_process(delta):
	pass
	#var tile = tileland_grass.instance()
	#tile.position = Vector2(100,100)
	#add_child(tile)
	

