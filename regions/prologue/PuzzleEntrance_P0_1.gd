## Entrance trigger that lets the player enter the first Prologue puzzle.
class_name PuzzleEntrance_P0_1
extends Area2D

signal player_entered_entrance(puzzle_id: String)

@export var puzzle_id: String = "P0_1"

var _player_in_range := false
var _player_ref: Player = null

func _ready() -> void:
    body_entered.connect(_on_body_entered)
    body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node) -> void:
    if body is Player:
        _player_in_range = true
        _player_ref = body
        body.register_nearby_entrance(self)

func _on_body_exited(body: Node) -> void:
    if body is Player and body == _player_ref:
        _player_in_range = false
        body.clear_nearby_entrance(self)
        _player_ref = null

func try_enter_puzzle(_player: Player) -> void:
    if not _player_in_range:
        return
    emit_signal("player_entered_entrance", puzzle_id)
    PuzzleManager.enter_puzzle(puzzle_id)
