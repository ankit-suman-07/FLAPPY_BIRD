extends Control

var GAME = load("uid://ky7l6d21icp")


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		get_tree().change_scene_to_packed(GAME)

func _ready() -> void:
	get_tree().paused = false
