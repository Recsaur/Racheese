extends Node2D
@export var dialogueintro: DialogueResource
const FirstLvl = preload("res://main_map.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$FadeTransition/ColorRect/AnimationPlayer.play("out")
	#await $FadeTransition/ColorRect/AnimationPlayer.animation_finished
	DialogueManager.show_dialogue_balloon(dialogueintro)
	await DialogueManager.dialogue_ended
	$FadeTransition/ColorRect/AnimationPlayer.play("in")
	await $FadeTransition/ColorRect/AnimationPlayer.animation_finished
	get_tree().change_scene_to_packed(FirstLvl)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
