extends Node2D

@onready var end_panel = $CanvasLayer/UI/EndPanel
@onready var end_message = $CanvasLayer/UI/EndPanel/EndMessage

func _on_board_game_won():
	end_message.text = "You Win!"
	end_panel.visible = true

func _on_board_game_lost():
	end_message.text = "Out of Turns!"
	end_panel.visible = true

func _on_restart_button_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
