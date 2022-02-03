
extends Node2D

var tile
var tile_size = 64

var move = [600,100]
var tile_pos = []

var image
var tile0 = load('res://assets/tile_land/tileland_air.png')
var tile1 = load('res://assets/tile_land/tileland_water.png')
var tile2 = load('res://assets/tile_land/tileland_sand.png')
var tile3 = load('res://assets/tile_land/tileland_grass.png')

var tile_noise
var noise = OpenSimplexNoise.new()

# Configure
# noise.seed = randi()
# noise.octaves = 4
# noise.period = 20.0
# noise.persistence = 0.8

# Sample
# print("Values:")
# print(noise.get_noise_2d(1.0, 1.0))

# (tilemap_y*(C.tile_size/2)-tilemap_x*(C.tile_size/2))+move_x,(tilemap_y*(C.tile_size/4)+tilemap_x*(C.tile_size/4))+move_y))

func tilepos(x,y,move):
	tile_pos = [ y*(tile_size/2)-x*(tile_size/2)+move[0], y*(tile_size/4)+x*(tile_size/4)+move[1] ]

	return tile_pos
	
func tilesprite(image,tile_pos):
	tile = Sprite.new()
	tile.set_texture(image)
	tile.set_offset(Vector2(tile_pos[0],tile_pos[1]))
	add_child(tile)

func _ready():
	noise.seed = randi()
	noise.octaves = 4
	noise.period = 20.0
	noise.persistence = 0.8
	
	

func _physics_process(delta):
	
	if Input.is_action_just_pressed('ui_up'):
		print('move')
		move[1]-=1
		get_tree().change_scene("res://tile0.tscn")
	
	for x in range(0,10,1):
		for y in range(0,10,1):
			
			tilepos(x,y,move)
			
			tile_noise = noise.get_noise_2d(x, y) * 100
			
			tile_noise = int(tile_noise)+50
			
			print("Values:")
			print(tile_noise)
			
			#if 0 <= tile_noise < 20:
				#tilesprite(tile0,tile_pos)
				
			#if 20 <= tile_noise < 50:
				#tilesprite(tile1,tile_pos)
				
			#if 0.0 <= tile_noise < 0.1:
				#tilesprite(tile2,tile_pos)
				
			#if 0.1 <= tile_noise < 0.2:
				#tilesprite(tile3,tile_pos)
			
			
