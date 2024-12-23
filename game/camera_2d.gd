extends Camera2D

@onready var character_body_2d: CharacterBody2D = $"../CharacterBody2D"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = character_body_2d.global_position
	pass
