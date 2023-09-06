extends Node

const SAVE_PATH = "res://savegame.bin"

func saveGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var data: Dictionary = {
		"highscore": GlobalVars.highscore
	}
	var jstr = JSON.stringify(data)
	file.store_line(jstr)

func loadGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if FileAccess.file_exists(SAVE_PATH) == true:
		if not file.eof_reached():
			var currentLine = JSON.parse_string(file.get_line())
			if currentLine:
				GlobalVars.highscore = currentLine["highscore"]


func die():
	if GlobalVars.alive:
		GlobalVars.alive = false
		if GlobalVars.score > GlobalVars.highscore:
			GlobalVars.highscore = GlobalVars.score
			saveGame()
		print("High Score: " + str(GlobalVars.highscore))
