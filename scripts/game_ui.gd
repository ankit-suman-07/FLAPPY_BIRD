extends Control

@onready var score: Label = $MarginContainer/score
@onready var game_over: Label = $MarginContainer/gameOver
@onready var play_again: Label = $MarginContainer/playAgain
@onready var game_over_timer: Timer = $gameOverTimer

var _can_press: bool = false
var _score:int = 0

func _ready() -> void:
	_score = 0
		
func _enter_tree() -> void:
	SignalsHub._on_plane_died.connect(on_plane_died)
	SignalsHub._on_point_scored.connect(on_point_scored)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		GameManager.load_main_scene()
	elif _can_press and event.is_action_pressed("jump"):
		ScoreManager.high_score = _score
		GameManager.load_main_scene()

func on_point_scored() -> void:
	_score += 1
	score.text = "%04d" % _score
	

func on_plane_died() -> void:
	game_over.show()
	game_over_timer.start()


func _on_game_over_timer_timeout() -> void:
	_can_press = true
	game_over.hide()
	play_again.show()
