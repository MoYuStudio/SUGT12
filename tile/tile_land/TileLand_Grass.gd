extends Sprite

var image = load('res://assets/tile_building/tilebuilding5.png')

func _ready():
	pass
	
func _physics_process(delta):
	pass

func _on_TileSurfaceInput_pressed():
	var tile = Sprite.new()
	tile.set_texture(image)
	tile.set_offset(Vector2(0,-16))
	tile.set_z_index(2)
	add_child(tile)
	print('tile be click')
