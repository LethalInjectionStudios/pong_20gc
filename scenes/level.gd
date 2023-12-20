extends Node2D

var ball_scene = preload("res://scenes/ball.tscn")

func _ready():
	spawn_new_ball()

func spawn_new_ball() -> void:
	var ball = ball_scene.instantiate()
	add_child(ball)
	ball.connect('score', spawn_new_ball)
	$UI.update_score()
