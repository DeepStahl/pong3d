extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.

	var motion = Vector3(0,0,0)
	
	# look for input with the left and right arrows
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	var direction = 0
	var speed = 15
	# set the direction to move in
	if left:
		direction = -1
	elif right:
		direction = 1
	else:
		direction = 0
	# apply and move the body
	motion = Vector3(0,0,direction)*delta*speed
	translate(motion)
	pass