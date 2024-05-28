extends ParallaxBackground

var scrolling_speed = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if GlobalVars.alive:
		scroll_offset.x -= scrolling_speed * delta
