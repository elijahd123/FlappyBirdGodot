extends Timer

var pipe = preload("res://Scenes/Pipe/pipe.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not GlobalVars.alive:
		self.stop()


func _on_timeout():
	var pipeTemp = pipe.instantiate()
	var rng = RandomNumberGenerator.new()
	var yPos = rng.randi_range(-301+63, 0-63)
	pipeTemp.position = Vector2(1152, yPos)
	add_child(pipeTemp)
