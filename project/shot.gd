# shot.gd
extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const speed = 300
var target


func _ready():
	print("I exitst")
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	var velocity = Vector2()
	target = get_global_mouse_position()
	velocity = -(position - target).normalized()
	#velocity = Vector2(30,0)
	position += velocity
