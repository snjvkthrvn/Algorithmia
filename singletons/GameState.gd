## Global run-time state tracker for regions, puzzles, and inventory.
class_name GameState
extends Node

var current_region: String = "prologue"
var inventory: Array[String] = []

func reset() -> void:
    inventory.clear()
    current_region = "prologue"
