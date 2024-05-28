extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Utils.loadGame()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_button_button_down():
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://Scenes/Game/Game.tscn")
	
