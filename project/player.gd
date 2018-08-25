extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (int) var speed = 300
var target

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	var velocity = Vector2()
	var move_up = Input.is_action_pressed("ui_up")
	var move_down = Input.is_action_pressed("ui_down")
	var move_left = Input.is_action_pressed("ui_left")
	var move_right = Input.is_action_pressed("ui_right")
	
	if move_up:
		velocity.y -= speed
	if move_down:
		velocity.y += speed
	if move_right:
		velocity.x += speed
	if move_left:
		velocity.x -= speed
	move_and_slide(velocity)
	if Input.is_action_just_pressed("ui_accept"):
		shoot()

func shoot():
	print("shoot")
	var shot = load("res://shot.tscn").instance()
	shot.position = get_global_position()
	get_parent().add_child(shot)
	