extends Control

func _ready():
	$StartButton.connect("pressed", Callable(self, "_on_StartButton_pressed"))
	
func _on_StartButton_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_one.tscn")

