
extends Node

func _ready():
	pass

func _on_Start_pressed():
	get_tree().change_scene('res://surface/GameMain.tscn')

func _on_Menu_pressed():
	get_tree().change_scene('res://surface/MenuMain.tscn')
