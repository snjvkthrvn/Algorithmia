## Basic overworld avatar enabling WASD/arrow movement and interaction prompts.
class_name Player
extends CharacterBody2D

@export var speed: float = 200.0

var _nearby_entrance: Node = null

func _physics_process(_delta: float) -> void:
    var input_vector := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    input_vector += Input.get_vector("move_left", "move_right", "move_up", "move_down")
    if input_vector.length() > 1.0:
        input_vector = input_vector.normalized()
    velocity = input_vector * speed
    move_and_slide()

func _unhandled_input(event: InputEvent) -> void:
    if event.is_action_pressed("interact"):
        _attempt_interaction()

func register_nearby_entrance(entrance: Node) -> void:
    _nearby_entrance = entrance

func clear_nearby_entrance(entrance: Node) -> void:
    if _nearby_entrance == entrance:
        _nearby_entrance = null

func _attempt_interaction() -> void:
    if _nearby_entrance and _nearby_entrance.has_method("try_enter_puzzle"):
        _nearby_entrance.try_enter_puzzle(self)
