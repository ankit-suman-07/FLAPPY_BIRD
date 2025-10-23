extends Control

@onready var game_over: Label = $MarginContainer/gameOver
@onready var play_again: Label = $MarginContainer/playAgain
@onready var game_over_timer: Timer = $gameOverTimer

var _can_press: bool = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		GameManager.load_main_scene()
	elif _can_press and event.is_action_pressed("jump"):
		GameManager.load_main_scene()

func _enter_tree() -> void:
	SignalsHub._on_plane_died.connect(on_plane_died)
	

func on_plane_died() -> void:
	game_over.show()
	game_over_timer.start()


func _on_game_over_timer_timeout() -> void:
	_can_press = true
	game_over.hide()
	play_again.show()
