extends Node2D

@onready var end_panel = $CanvasLayer/UI/EndPanel
@onready var end_message = $CanvasLayer/UI/EndPanel/EndMessage
@onready var restart_button = $CanvasLayer/UI/EndPanel/RestartButton
@onready var board = $Board

func _ready():
	end_panel.visible = false
	board.connect("game_won", _on_board_game_won)
	board.connect("game_lost", _on_board_game_lost)
	restart_button.pressed.connect(_on_restart_button_pressed)

func _on_board_game_won():
	end_message.text = "You Win!"
	end_panel.visible = true

func _on_board_game_lost():
	end_message.text = "Out of Turns!"
	end_panel.visible = true

func _on_restart_button_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_board_turns_changed(value: Variant) -> void:
	pass # Replace with function body.
