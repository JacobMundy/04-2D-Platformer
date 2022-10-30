extends Area2D


func _on_Exit_body_entered(body):
	if body.name == "Player":
		if name == "Exit_to_1_2":
			var _target = get_tree().change_scene("res://Levels/Level1_2.tscn")
			Global.current_level = "1_2"
			Global.score += 5
		if name == "Exit_to_1_3":
			var _target = get_tree().change_scene("res://Levels/Level1_3.tscn")
			Global.current_level = "1_3"
			Global.score += 25
		if name == "Exit_to_2_1":
			var _target = get_tree().change_scene("res://Levels/Level2_1.tscn")
			Global.current_level = "2_1"
			Global.score += 50
		if name == "Exit_to_2_2":
			var _target = get_tree().change_scene("res://Levels/Level2_2.tscn")
			Global.current_level = "2_2"
			Global.score += 50
		if name == "Exit_to_2_3":
			var _target = get_tree().change_scene("res://Levels/Level2_3.tscn")
			Global.current_level = "2_3"
			Global.score += 100
		if name == "Exit_to_3_1":
			var _target = get_tree().change_scene("res://Levels/Level3_1.tscn")
			Global.current_level = "3_1"
			Global.score += 200
		if name == "Exit_to_3_2":
			var _target = get_tree().change_scene("res://Levels/GameOver.tscn")
			Global.current_level = "3_2"
			Global.score += 500
