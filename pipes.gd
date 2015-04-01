
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initialization here
	pass

func _on_Area2D_body_exit( body ):
	get_node("/root/global").score += 1
