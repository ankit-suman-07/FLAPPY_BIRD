extends Node2D

const PIPES = preload("uid://cp2brgy51xf6q")
var MAIN = load("uid://cm621q6roibev")


@onready var pipes_holder: Node = $pipesHolder
@onready var upper_marker: Marker2D = $upperMarker
@onready var lower_marker: Marker2D = $lowerMarker

func _ready() -> void:
	spawn_pipes()

func spawn_pipes() -> void:
	var new_pipes = PIPES.instantiate()
	var y_position: float = randf_range(
		upper_marker.position.y,
		lower_marker.position.y
	)
	
	new_pipes.position = Vector2(
		upper_marker.position.x,
		y_position
	)
	
	pipes_holder.add_child(new_pipes)

func _on_spawn_timer_timeout() -> void:
	spawn_pipes()


func _on_plane__on_plane_died() -> void:
	get_tree().paused = true
