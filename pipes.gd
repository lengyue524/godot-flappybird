
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var bird 
func _ready():
	# Initialization here
	bird = get_node("/root/root/bird")
	pass

func _on_Area2D_body_exit( body ):
	if body == bird:
		get_node("/root/global").score += 1
