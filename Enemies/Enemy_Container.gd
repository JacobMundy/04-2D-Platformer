extends Node2D

onready var Bat = load("res://Enemies/Bat.tscn")

func _ready():
		var bat = Bat.instance()
		var bat2 = Bat.instance()
		add_child(bat)
		add_child(bat2)
		bat.name = 'Bat'
		bat2.name = 'Bat2'
		bat.position = Vector2(1000,100)
		bat2.position = Vector2(1664, 350)
