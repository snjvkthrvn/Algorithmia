## Temporary world root that boots the Prologue region and shared UI.
class_name WorldRoot
extends Node

const PROLOGUE_REGION_ID := "prologue"
const MAIN_HUD_SCENE := preload("res://ui/MainHUD.tscn")
const DIALOGUE_BOX_SCENE := preload("res://ui/DialogueBox.tscn")

@onready var region_root: Node2D = $RegionRoot
@onready var ui_root: CanvasLayer = $UIRoot

var _region_loader := RegionLoader.new()

func _ready() -> void:
    _load_prologue_region()
    _spawn_ui()

func _load_prologue_region() -> void:
    var region_scene: PackedScene = _region_loader.load_region_scene(PROLOGUE_REGION_ID)
    if region_scene:
        var region_instance := region_scene.instantiate()
        region_root.add_child(region_instance)

func _spawn_ui() -> void:
    var main_hud := MAIN_HUD_SCENE.instantiate()
    var dialogue_box := DIALOGUE_BOX_SCENE.instantiate()
    ui_root.add_child(main_hud)
    ui_root.add_child(dialogue_box)
