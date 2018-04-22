extends KinematicBody

var velocity = Vector3(0, 10, 0)

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_physics_process(true)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _physics_process(delta):
	var collide = move_and_collide(velocity * delta)
	if collide:
		var name = collide.collider.get("name")
		if name=="paddleBody":
			velocity *= 1.1
			
		#var x = collide.collider.get_class()
		velocity = velocity.bounce(collide.normal)
		#TODO: add collide.remainder to ball-position
	pass
