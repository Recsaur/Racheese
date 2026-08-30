extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameController.TalkPlayer:
		position = Vector2(217,270)
		scale = Vector2(5.357,5.357)
		modulate = Color(1.0, 1.0, 1.0)
	else:
		position = Vector2(210,315)
		scale = Vector2(4.837,4.837)
		modulate = Color(0.678, 0.678, 0.678)
