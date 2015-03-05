
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var jumping = false
var jump_force
var fall_speed
var anim
func _ready():
	# Initalization here
	anim = get_node("anim")
	anim.play("down")
	#连接谁的发送到connect anim‘'s finished signal to self obj and implement it by func: finished()
	anim.connect("finished",self,"finished")
	jump_force = get_node("/root/global").jump_force
	fall_speed = get_node("/root/global").fall_speed
	#get_node("Area2D").connect("body_enter_shape",self,"dead")
	set_process(true)
	#set_fixed_process(true)
	set_process_input(true)

func finished():
	anim.play("down")
	jumping = false

func _process(delta):
	if get_pos().y<0:
		set_pos(Vector2(get_pos().x,0))
	if !jumping:
		set_pos(Vector2(get_pos().x,get_pos().y+fall_speed*delta))
#	print(get_pos().x+","+get_pos().y)

#func _fixed_process(delta):
#	if not jumping:
#		set_pos(get_pos()+Vector2(0,delta*GRAVITY))
#		#move(Vector2(0,delta*GRAVITY))
#	elif jumping:
#		set_pos(get_pos()+Vector2(0,-delta*GRAVITY))
#		#move(Vector2(0,-delta*GRAVITY))

func _input(ev):
	if ev.is_pressed():
		anim.play("up")
#		apply_impulse( Vector2(0.5,0.5), Vector2(0,-jump_force) )
		#set_applied_force( Vector2(0,-GRAVITY) )
		jumping = true
#		yield(anim,"animation_changed")
#		jumping = false
#		if jumping:
#			yield( anim, "finished" )
#			anim.play("down")
#			jumping = false

#func dead( body_id, body, body_shape, area_shape ):
#	print(body)

#func _integrate_forces(s):
#	pass
#	#set_linear_velocity(Vector2(0,-100))
#	if get_pos().y<0:
#		set_pos(Vector2(get_pos().x,0))
#	var lv = s.get_linear_velocity()
#	var step = s.get_step()
#	#print(lv+","+step)