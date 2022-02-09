extends Node

var noise
var map_size = Vector2(80, 60)
var grass_cap = 0.5
var road_caps = Vector2(0.3, 0.05)
var enviroment_caps = Vector3(0.4, 0.3, 0.04)

# var grass_tile = load('res://assets/tile_land/tileland_grass.png')

func _ready():
	randomize()
	noise = OpenSimplexNoise.new()
	noise.seed = randi()
	noise.octaves = 1.0
	noise.period = 12
#	noise.persistence = 0.7
	#make_grass_map()
	
func make_grass_map():
	for x in map_size.x:
		for y in map_size.y:
			var a = noise.get_noise_2d(x,y)
			#if a < grass_cap:
			$TileMap.set_cell(x,y,0)
				
	$TileMap.update_bitmask_region(Vector2(0.0, 0.0), Vector2(map_size.x, map_size.y))
