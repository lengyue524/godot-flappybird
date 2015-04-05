
extends Node
const roll_speed = 200
const jump_speed = 500
const pipe_rate = 2
const fall_speed = 500

var score = 0

var current_scene = null

func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child( root.get_child_count() -1 )

func goto_scene(scene):
	# remove current scene from root and enqueue it for deletion\
	#get_tree().get_root().remove_child(current_scene)
	# (when deleted, it will be removed)
	current_scene.queue_free()

	# load and add new scene to root
	var s = ResourceLoader.load(scene)
	current_scene = s.instance()
	get_tree().get_root().add_child(current_scene)