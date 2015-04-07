
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initalization here
	#set_process_input(true)
	set_fixed_process(true)
	pass
func _fixed_process(delta):
	if Input.is_action_pressed("ui_accept"):
		_on_click_pressed()
#func _input(event):
#	get_tree().set_input_as_handled()
#func _unhandled_input(event):
#	print(str("_unhandled_input",event))
#	get_tree().set_input_as_handled()
#func _pressed():
#	get_node("/root/global").goto_scene("res://main.scn")
#func _input_event(event):
#	print(str("start",event.type,event.pressed))
#	if (event.type == InputEvent.MOUSE_BUTTON and event.pressed):
#		get_node("/root/global").goto_scene("res://main.scn")
#		accept_event()
#	if event.type == InputEvent.SCREEN_TOUCH:
#		accept_event()

func _on_click_pressed():
	get_node("/root/global").goto_scene("res://main.scn")
