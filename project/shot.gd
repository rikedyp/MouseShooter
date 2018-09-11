# shot.gd
extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const speed = 300
var target
# Declare velocity here for straight line forever bullet
var velocity = Vector2()


func _ready():
	print("I exitst")
	# set velocity here for one that goes in straight line forever
	# oops you gotta set the target here too
	target = get_global_mouse_position()
	velocity = -(position - target).normalized()
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	# (Declare and) Set velocity here for a 'homing' bullet
	#var velocity = Vector2()
	#velocity = -(position - target).normalized()
	#velocity = Vector2(30,0)
	position += velocity
