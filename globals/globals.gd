extends Node

var ball_scene = preload("res://scenes/ball.gd")

var screen_width: int = 960
var screen_height: int = 648
var isGameActive: bool = false
var ball_position

var player_one_score = 0:
	get:
		return player_one_score
	
var player_two_score = 0:
	get:
		return player_two_score
		

	
