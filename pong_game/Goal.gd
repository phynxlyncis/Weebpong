extends Area2D



func _on_body_entered(body):
	if body.name == "Ball":
		Points.player_2_points += 1
		get_tree().change_scene_to_file("res://pong_game.tscn")
