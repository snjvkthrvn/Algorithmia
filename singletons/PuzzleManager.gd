## Routes puzzle attempts and completion states per region.
class_name PuzzleManager
extends Node

var completed: Dictionary = {}

func mark_complete(region: String, puzzle_id: String) -> void:
    completed.setdefault(region, {})[puzzle_id] = true
