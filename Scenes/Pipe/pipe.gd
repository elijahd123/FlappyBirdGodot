extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if GlobalVars.alive:
		self.position.x -= GlobalVars.pipespeed
	
	if self.position.x <= -159:
		queue_free()


func _on_pipe_wall_body_entered(body):
	if body.name == "Player":
		Utils.die()


func _on_pipe_gap_body_entered(body):
	if body.name == "Player" and GlobalVars.alive:
		GlobalVars.score += 1
