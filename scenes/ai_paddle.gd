extends CharacterBody2D

func _process(delta):
	if Globals.isGameActive:
		print('moving')
		position.y = Globals.ball_position.y
