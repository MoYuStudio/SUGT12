extends Node

var tile
var tile_size = 64

var move = [600,100]
var tile_pos = []

var tileland_grass = load('res://tile/tile_land/TileLand_Grass.tscn')

func tilepos(x,y,move):
	var tile_pos = [ y*(tile_size/2)-x*(tile_size/2)+move[0], y*(tile_size/4)+x*(tile_size/4)+move[1] ]

	return tile_pos
	
func mouse_input():
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		var mouse_pos = get_viewport().get_mouse_position()
		print(mouse_pos)

func _ready():
	pass

func _physics_process(delta):
	
	# mouse_input()
	
	var tile = tileland_grass.instance()
	tile.position = Vector2(100,100)
	add_child(tile)
