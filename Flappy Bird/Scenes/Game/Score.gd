extends Label

var score

# Called when the node enters the scene tree for the first time.
func _ready():
	set_position(Vector2(576-14.5, 30))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str(GlobalVars.score)
	score = int(self.text)
	if score > 9:
		set_position(Vector2(576-29, 30))
	elif score > 99:
		set_position(Vector2(576-43.5, 30))
	elif score > 999:
		set_position(Vector2(576-58, 30))
