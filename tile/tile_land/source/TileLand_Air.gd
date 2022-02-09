extends Sprite

var image = load('res://assets/tile_land/tileland_grass.png')

var tileland_air = load('res://tile/tile_land/TileLand_Air.tscn')

var building

func _ready():
	set_z_index(2)
	
func _on_Choose_pressed():
	Global.tile_map
	
	building = 1
	print('click')
