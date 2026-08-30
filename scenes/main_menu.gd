extends Control
const maingame = preload("res://scenes/talking_stage.tscn")
var button_type = null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	AudioHandler.MainMenuBG()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	button_type = "Start"
	$FadeTransition.show()
	$FadeTransition/FadeTimer.start()
	$FadeTransition/ColorRect/AnimationPlayer.play("in")

func _on_fade_timer_timeout() -> void:
	if button_type == "Start":
		#$FadeTransition/ColorRect/AnimationPlayer.play("out")
		get_tree().change_scene_to_packed(maingame)


func _on_button_pressed() -> void:
	$ColorRect2.hide()
	pass # Replace with function body.


func _on_credits_pressed() -> void:
	$ColorRect2.show()
	pass # Replace with function body.
