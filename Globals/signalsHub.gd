extends Node

signal _on_plane_died
signal _on_point_scored


func emit_on_plane_died() -> void:
	_on_plane_died.emit()

func emit_on_point_scored() -> void:
	_on_point_scored.emit()
