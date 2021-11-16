extends Button

func _on_Button_pressed():
	get_parent().get_node("WaveTransition").switch_scene("res://Scene1.tscn")
