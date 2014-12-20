
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var ground1
var ground2
var ground1_pos
var ground2_pos
var ground1_rect
var ground2_rect
var global = preload("global.gd")
func _ready():
	# Initalization here
	ground1 = get_node("ground1")
	ground2 = get_node("ground2")
	ground1_pos = ground1.get_pos()
	ground2_pos = ground2.get_pos()
	
#func _process(detal):
#	pass