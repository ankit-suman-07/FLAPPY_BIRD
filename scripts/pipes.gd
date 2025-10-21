extends Node2D

const SPEED: float = 120.0


func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	position.x -= SPEED * delta
	
	

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	print("Pipe exited!!!!!")
	set_process(false)
	queue_free()
