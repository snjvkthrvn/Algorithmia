## Loads Codex entries and serves them to UI screens.
class_name CodexManager
extends Node

var entries: Dictionary = {}

func load_entries(_path: String = "res://data/codex_entries.json") -> void:
    # Replace with real JSON parsing logic later.
    entries.clear()
