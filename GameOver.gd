extends Control




func _ready():
	$Label.text = "Thank You For Playing! \n  Score " + str(Global.score) + "\nDeaths " + str(Global.deaths) + "\nTotal score loss from death " + str(Global.deaths*5) 

func _on_Quit_pressed():
	get_tree().quit()

func _on_Restart_pressed():
	var _target = get_tree().change_scene("res://Game.tscn")
