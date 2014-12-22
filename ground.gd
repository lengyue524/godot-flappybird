
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
const half_width = 420
var roll_speed
func _ready():
	# Initalization here
	roll_speed = get_node("/root/global").roll_speed
	set_fixed_process(true)

func _fixed_process(detal):
	var pos = get_pos()
	if pos.x<-half_width:
		pos.x = half_width*3
	var new_pos = Vector2(pos.x-roll_speed*detal,pos.y)
	set_pos(new_pos)
	#move(Vector2(-global.roll_speed*detal,0))
