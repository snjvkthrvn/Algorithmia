## Oversees Logic Forge drills and progress.
class_name LogicForgeManager
extends Node

var active_module: String = ""

func start_module(module_name: String) -> void:
    active_module = module_name
