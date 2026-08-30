extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameController.TalkPlayer :
		position = Vector2(693.0,332)
	else:
		position = Vector2(66.0,332)
