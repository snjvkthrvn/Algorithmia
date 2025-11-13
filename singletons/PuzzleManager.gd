## Routes puzzle attempts and completion states per region.
class_name PuzzleManager
extends Node

const _PUZZLE_SCENES := {
    "P0_1": preload("res://puzzles/prologue/Puzzle_P0_1_FollowThePath.tscn")
}

var completed: Dictionary = {}

func enter_puzzle(puzzle_id: String) -> void:
    var scene: PackedScene = _PUZZLE_SCENES.get(puzzle_id)
    if scene == null:
        push_warning("Unknown puzzle id: %s" % puzzle_id)
        return
    var tree := get_tree()
    if tree:
        tree.change_scene_to_packed(scene)

func mark_complete(region: String, puzzle_id: String) -> void:
    completed.setdefault(region, {})[puzzle_id] = true
