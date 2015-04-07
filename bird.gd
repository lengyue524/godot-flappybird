
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"
var jumping = false
var jump_speed
var jump_time
var jumping_time
var fall_speed
var anim
func _ready():
	# Initalization here
	anim = get_node("anim")
	anim.play("down")
	#连接谁的发送到connect anim‘'s finished signal to self obj and implement it by func: finished()
	jump_speed = get_node("/root/global").jump_speed
	jump_time = anim.get_animation("up").get_length();
	fall_speed = get_node("/root/global").fall_speed
	set_process(true)
	set_fixed_process(true)
	set_process_input(true)

func _process(delta):
	if get_pos().y<0:
		set_pos(Vector2(get_pos().x,0))

func _fixed_process(delta):
	if is_colliding():
		game_over()
	if jumping:
		jump(delta)
	else:
		move(Vector2(0,fall_speed*delta))

func _input(ev):
	if (ev.type == InputEvent.SCREEN_TOUCH and ev.pressed) or (ev.is_action("ui_accept") and ev.pressed):
		jumping_time = 0
		jumping = true
		get_tree().set_input_as_handled()

func jump(delta):
	jumping_time += delta;
	anim.play("up")
	move(Vector2(0,-jump_speed*delta))
	if jumping_time>jump_time:
		anim.play("down")
		jumping = false;

func game_over():
	get_node("/root/global").goto_scene("res://game_over.scn")