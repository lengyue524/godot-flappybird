
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
const half_width = 420
var global = preload("global.gd")
func _ready():
	# Initalization here
	set_fixed_process(true)

func _fixed_process(detal):
	var pos = get_pos()
	if pos.x<-half_width:
		pos.x = half_width*3
	var new_pos = Vector2(pos.x-global.roll_speed*detal,pos.y)
	set_pos(new_pos)
	#move(Vector2(-global.roll_speed*detal,0))