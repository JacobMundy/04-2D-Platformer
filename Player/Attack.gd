extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var attack_bubble = player.get_node("/root/Game/Player_Container/Player/Attack_Area/Attack_Bubble")

onready var prev_direction = player.direction

func _ready():
	yield(player, "ready")

func start():
	$Timer.start()
	player.set_animation("Attack") 
	attack_bubble.set_disabled(0)

func _on_Timer_timeout():
	SM.set_state("Idle")
	attack_bubble.set_disabled(1)
	
func physics_process(_delta):
	if Input.is_action_pressed("jump"):
		SM.set_state("Moving_and_Jumping")
	if player.is_moving():
		if player.direction != prev_direction:
			player.velocity.x = 0
			prev_direction = player.direction
		player.velocity += player.move_speed * player.move_vector()
		player.move_and_slide(player.velocity, Vector2.UP)
