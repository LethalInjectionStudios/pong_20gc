extends CharacterBody2D

func _process(delta):		
	if Globals.is_game_active:
		#print('moving')
		position.y = Globals.ball_position.y
