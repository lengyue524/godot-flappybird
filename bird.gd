
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"
var jumping = false
var GRAVITY
var anim
func _ready():
	# Initalization here
	anim = get_node("anim")
	anim.play("down")
	#连接谁的发送到connect anim‘'s finished signal to self obj and implement it by func: finished()
	anim.connect("finished",self,"finished")
	GRAVITY = get_node("/root/global").GRAVITY
	set_process(true)
	set_fixed_process(true)
	set_process_input(true)

func finished():
	anim.play("down")
	jumping = false

func _process(delta):
	if get_pos().y<0:
		set_pos(Vector2(get_pos().x,0))


func _fixed_process(delta):
	if not jumping:
		move(Vector2(0,delta*GRAVITY))
	elif jumping:
		move(Vector2(0,-delta*GRAVITY))

func _input(ev):
	if ev.is_pressed():
		anim.play("up")
		jumping = true
#		yield(anim,"animation_changed")
#		jumping = false
#		if jumping:
#			yield( anim, "finished" )
#			anim.play("down")
#			jumping = false

	