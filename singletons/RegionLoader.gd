## Handles async loading and transitions between major regions.
class_name RegionLoader
extends Node

var _region_scenes := {
    "prologue": preload("res://regions/prologue/RegionPrologue.tscn")
}

func load_region_scene(region_name: String) -> PackedScene:
    # Placeholder lookup until streaming logic is available.
    return _region_scenes.get(region_name, null)

func queue_region(_region_name: String) -> void:
    # Replace with actual streaming logic later.
    pass
