extends CharacterBody2D

var direction: Vector2
var speed: int = 300;

signal score


# Called when the node enters the scene tree for the first time.
func _ready():
	direction = Vector2(-1, 0)
	position = Vector2(480, 324)
	Globals.ball_position = position
	Globals.isGameActive = true
	print(Globals.isGameActive)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = direction * speed
	move_and_slide()
	
	if global_position.y < 0 or global_position.y > Globals.screen_height:
		direction.y *= -1
		
	if global_position.x < 0:
		Globals.player_two_score += 1
		destroy_ball()
		
	if global_position.x > Globals.screen_width:
		Globals.player_one_score += 1
		destroy_ball()
		
	Globals.ball_position = global_position
	
func _on_hitbox_body_entered(body):
	direction.x *= -1
	
	if global_position.y > body.global_position.y:
		direction.y = 1
		
	if global_position.y < body.global_position.y:
		direction.y = -1
	
func destroy_ball() -> void:
	score.emit()
	Globals.isGameActive = false
	queue_free()	
