extends Area2D
var collectfx = preload("res://scenes/collectparticle.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	var collectparticle = collectfx.instantiate()
	AudioHandler.EatSound()
	GameController.MoldyCheese()
	get_parent().add_child(collectparticle)
	collectparticle.position = position
	GameController.emit_signal("Action",10)
	queue_free()
