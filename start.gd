
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	set_process_input(true)
	pass

func _input(event):
	print("_input",event)
	get_tree().set_input_as_handled()


