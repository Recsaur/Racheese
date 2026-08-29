extends Node2D

@onready var CheeseNLabel = $CheeseNeeds
@onready var Door = $Door
var CheeseNeeded = 3
var CheeseCollected = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	CheeseNLabel.text = str(CheeseCollected, "/", CheeseNeeded)

func DoorCheck():
	if CheeseCollected >= 3:
		print("open")
		var tween = create_tween()
		tween.tween_property(Door,"position:x",Door.position.x+50,0.25)


func _on_cheese_timer_timeout() -> void:
	GameController.MouseSpeed = 2000
	GameController.MouseMaxSpeed = 500
	get_tree().reload_current_scene()
