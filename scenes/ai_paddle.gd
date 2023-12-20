extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
var speed = 300


func _process(delta):		
	if Globals.is_game_active and position.distance_to(Globals.ball_position) < 300:
		#print('moving')
		#position.y = Globals.ball_position.y
		
		direction.y = Globals.ball_position.y - position.y
		velocity = direction * speed * delta
		
		move_and_slide()
