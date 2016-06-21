
extends TouchScreenButton

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initalization here
	#set_process_input(true)
	connect("pressed",self,"_on_click_pressed")
#	set_process_input(true)
	pass
#func _input(ev):
#		if ev.is_action("ui_accept") and ev.pressed:
#			_on_click_pressed()
#			get_tree().set_input_as_handled()
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
	get_tree().change_scene("res://main.scn")
#	get_node("/root/global").goto_scene("res://main.scn")
