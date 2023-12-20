extends CanvasLayer

func update_score() -> void:
	$"Player 1 Score".text = str(Globals.player_one_score)
	$"Player 2 Score".text = str(Globals.player_two_score)
