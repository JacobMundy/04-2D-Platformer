extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Quit_pressed():
	get_tree().quit()


func _on_Start_easy_pressed():
	Global.score = 25
	Global.current_level = "1_1"
	var _target = get_tree().change_scene("res://Levels/Level1_1.tscn")


func _on_Start_Med_pressed():
	Global.score = 15
	Global.current_level = "1_1"
	var _target = get_tree().change_scene("res://Levels/Level1_1.tscn")

func _on_Start_Hard_pressed():
	Global.score = 10
	Global.current_level = "1_1"
	var _target = get_tree().change_scene("res://Levels/Level1_1.tscn")
