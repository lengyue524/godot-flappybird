
extends Button

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initalization here
	pass

func _pressed():
	get_node("/root/global").goto_scene("res://main.scn")