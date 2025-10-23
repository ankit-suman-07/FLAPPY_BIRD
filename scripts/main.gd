extends Control

const GAME = preload("uid://ky7l6d21icp")


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		get_tree().change_scene_to_packed(GAME)
