extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	set_position(Vector2(451.5, 340))
	self.disabled = true
	self.visible = false

func _process(delta):
	if not GlobalVars.alive:
		self.disabled = false
		self.visible = true


func _on_button_down():
	await get_tree().create_timer(0.3).timeout
	get_tree().reload_current_scene()
	GlobalVars.alive = true
	GlobalVars.score = 0
