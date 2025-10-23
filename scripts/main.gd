extends Control

#var GAME = load("uid://ky7l6d21icp")
@onready var score: Label = $MarginContainer/score


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		GameManager.load_game_scene()

func _ready() -> void:
	score.text = "%04d" % ScoreManager.high_score
	get_tree().paused = false
