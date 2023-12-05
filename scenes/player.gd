extends CharacterBody2D

func _physics_process(delta):
	position.y = get_global_mouse_position().y
