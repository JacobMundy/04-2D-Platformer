extends Control


func _ready():
	pass # Replace with function body.

func _on_Quit_pressed():
	get_tree().quit()

func _on_Restart_pressed():
	var _target = get_tree().change_scene("res://Game.tscn")
