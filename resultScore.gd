
extends Label

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	set_text(str(get_node("/root/global").score))


