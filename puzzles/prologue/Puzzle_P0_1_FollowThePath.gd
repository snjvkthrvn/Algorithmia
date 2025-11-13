## Tutorial puzzle teaching basic traversal ordering.
class_name Puzzle_P0_1_FollowThePath
extends Node2D

func _ready() -> void:
    pass

func _unhandled_input(event: InputEvent) -> void:
    if event.is_action_pressed("ui_cancel"):
        get_tree().change_scene_to_file("res://scenes/WorldRoot.tscn")
