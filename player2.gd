extends CharacterBody2D

const SPEED = 300.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("player2_left", "player2_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var dir_y := Input.get_axis("player2_up", "player2_down")
	if dir_y:
		velocity.y = dir_y * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
