extends Control

func _ready():
	pass # Replace with function body.

func _physics_process(_delta):
	$Label.text = "Score:" + str(Global.score)
