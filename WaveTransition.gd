extends ColorRect

func _ready():
	$AnimationPlayer.play("transition_out")
	yield($AnimationPlayer, "animation_finished")
	visible = false

func switch_scene(scene_path):
	visible = true
	$AnimationPlayer.play_backwards("transition_out")
	yield($AnimationPlayer, "animation_finished")
	get_tree().change_scene(scene_path)
