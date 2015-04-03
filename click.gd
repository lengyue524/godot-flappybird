
extends Button

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initalization here
	set_process_input(true)
	pass

#func _pressed():
#	get_node("/root/global").goto_scene("res://main.scn")
func _input_event(event):
	if ((event.type == InputEvent.SCREEN_TOUCH or event.type == InputEvent.MOUSE_BUTTON)and event.pressed):
		get_node("/root/global").goto_scene("res://main.scn")