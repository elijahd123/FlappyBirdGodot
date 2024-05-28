extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	set_position(Vector2(576-133.5, 110))
	self.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not GlobalVars.alive:
		self.visible = true
