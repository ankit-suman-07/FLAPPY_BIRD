extends Node
const GAME = preload("uid://ky7l6d21icp")
const MAIN = preload("uid://cm621q6roibev")


func load_game_scene() -> void:
	get_tree().change_scene_to_packed(GAME)

func load_main_scene() -> void:
	get_tree().change_scene_to_packed(MAIN)
