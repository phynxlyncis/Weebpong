extends CharacterBody2D

# var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var SPEED = 300

func _physics_process(delta):
	# Handle jump.
	# if Input.is_action_just_pressed("ui_accept") and is_on_fl:
	# 	velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Vector2(0, 0)
	if Input.is_key_pressed(KEY_W):
		direction =  -1#Vector2(0, -1)
	if Input.is_key_pressed(KEY_S):
		direction =  1#Vector2(0, 1)
	#var direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	

	move_and_slide()
