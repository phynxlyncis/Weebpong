extends Label


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = "P1: " + str(Points.player_1_points)
