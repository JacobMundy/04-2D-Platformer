extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		var menu = get_node("/root/Game/Player_Container/Player/Pause")
		if not menu.visible:
			get_tree().paused = true
			menu.show()
		else:
			get_tree().paused = false
			menu.hide()
 


func _on_Continue_pressed():
	var menu = get_node("/root/Game/Player_Container/Player/Pause")
	get_tree().paused = false
	menu.hide()


func _on_Quit_pressed():
	get_tree().quit()
