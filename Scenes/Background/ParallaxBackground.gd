extends ParallaxBackground

var scrolling_speed = 200

func _process(delta):
	if GlobalVars.alive:
		scroll_offset.x -= scrolling_speed * delta
