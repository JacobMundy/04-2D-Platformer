extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var attack_bubble = player.get_node("/root/Game/Player_Container/Player/Attack_Area/Attack_Bubble")

func _ready():
	yield(player, "ready")

func start():
	player.set_animation("Falling")
	player.jump_power = Vector2.ZERO

func physics_process(_delta):
	if Input.is_action_just_pressed("Attack"):
		player.set_animation("Fall_Attack")
		attack_bubble.set_disabled(0)
		$Timer.start()
	if player.is_on_floor() and player.velocity.y > 0:
		player.velocity.y = 0
		if player.is_moving():
			SM.set_state("Moving")
		else:
			SM.set_state("Idle")
		return
	if player.is_on_ceiling():
		player.velocity.y = 0
	player.velocity += player.move_speed * player.move_vector() + player.gravity
	player.move_and_slide(player.velocity, Vector2.UP)


func _on_Timer_timeout():
	attack_bubble.set_disabled(1)
