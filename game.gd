extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var blockProto = preload("res://block.tscn")

var yBounds = 47;
var yStartHeight = 20
var zBounds = 40; # -40 - +40
var margin = 3;
var width = 10
var height = 10

func _ready():
	for y in range(0, height):
		for z in range(0, width):
			var newBlock = blockProto.instance()
			newBlock.call("setPosition", y * yBounds / 2 / height + yStartHeight, z * (zBounds * 2 / width) - zBounds)
			add_child(newBlock)
	pass

func blockHit():
	if(randf() > 0.5):
		get_node("audio1").play()
	else:
		get_node("audio2").play()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
