
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var pipe = preload("res://pipes.xml")
var pipe_rate
var pipe_array = []
var instance_flag = 0
var roll_speed
func _ready():
	pipe_rate = get_node("/root/global").pipe_rate
	roll_speed = get_node("/root/global").roll_speed
	set_process(true)

func _process(detal):
	print(instance_flag)
	if instance_flag==0:
		pipe_array.append(instance_pipe())
	instance_flag += detal
	if instance_flag>pipe_rate:
		instance_flag = 0
	for p in pipe_array:
		if p.get_pos().x<-100:
			#delete pipe out screen
			pipe_array.erase(p)
			get_parent().remove_child(p)
			p.free()
		else:
			p.set_pos(p.get_pos()+Vector2(-roll_speed*detal,0))

func instance_pipe():
	var new_pipe = pipe.instance()
	get_parent().add_child(new_pipe)
	#set pipe position
	var y = rand_range(300,980)
	new_pipe.set_pos(Vector2(800,y))
	return new_pipe