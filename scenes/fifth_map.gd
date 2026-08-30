extends Node2D

@onready var CheeseNLabel = $CheeseNeeds
@onready var Door = $Door
var CheeseNeeded = 5
var CheeseCollected = 0
var BadCheese = 0

const NextScene = preload("res://scenes/secondmap.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$FadeTransition/ColorRect/AnimationPlayer.play("out")
	await $FadeTransition/ColorRect/AnimationPlayer.animation_finished
	$mouse.TransDone = true
	$CheeseTimer.start()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if BadCheese >= 2:
		GameController.MouseSpeed = 2000
		GameController.MouseMaxSpeed = 500
		get_tree().reload_current_scene()

	CheeseNLabel.text = str(CheeseCollected, "/", CheeseNeeded)

func DoorCheck():
	if CheeseCollected >= 5:
		print("open")
		var tween = create_tween()
		AudioHandler.GateOpen()
		tween.tween_property(Door,"position:x",Door.position.x+50,0.25)


func _on_cheese_timer_timeout() -> void:
	GameController.MouseSpeed = 2000
	GameController.MouseMaxSpeed = 500
	get_tree().reload_current_scene()


func _on_finish_lvl_body_entered(body: Node2D) -> void:
	$mouse.queue_free()
	$CheeseTimer.stop()
	GameController.MouseSpeed = 2000
	GameController.MouseMaxSpeed = 500
	$FadeTransition/ColorRect/AnimationPlayer.play("in")
	await get_tree().create_timer(0.75).timeout
	#await $FadeTransition/ColorRect/AnimationPlayer.animation_finished
	get_tree().change_scene_to_packed(NextScene)
	
	
