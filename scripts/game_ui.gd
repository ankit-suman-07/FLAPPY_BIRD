extends Control

const MAIN = preload("uid://cm621q6roibev")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		get_tree().change_scene_to_packed(MAIN)

func _ready() -> void:
	get_tree().paused = false
	
