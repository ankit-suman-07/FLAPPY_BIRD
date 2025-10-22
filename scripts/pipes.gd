extends Node2D

const SPEED: float = 120.0
const OFF_SCREEN: float = 100.0


func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	position.x -= SPEED * delta
	
	if position.x < get_viewport_rect().position.x - OFF_SCREEN:
		die()
	
func die() -> void:
	set_process(false)
	queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	die()



func _on_pipe_body_entered(body: Node2D) -> void:
	if body is PlaneBody:
		body.die()
