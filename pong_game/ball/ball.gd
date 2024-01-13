extends CharacterBody2D


var SPEED = 300.0
var NEW_SPEED = 500.0
var speed_increase = false

func _ready():
	var random_vector = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
	velocity.x = random_vector[0] * SPEED
	velocity.y = random_vector[1] * SPEED

func _physics_process(delta):
	move_and_slide()



func _on_collide_body_entered(body):
	if body.name == "Player" || body.name == "Player2":
		if not speed_increase:
			speed_increase = true
			var vec_direction = velocity.normalized()
			velocity.x = vec_direction[0]*NEW_SPEED
			velocity.y = vec_direction[1]*NEW_SPEED
		velocity.x = (-1) * velocity.x
	elif body.name == "Wall" || body.name == "Wall2":
		velocity.y = (-1) * velocity.y
