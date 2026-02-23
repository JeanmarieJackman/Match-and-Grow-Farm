extends Node2D

#@onready var end_panel = $CanvasLayer/UI/EndPanel
#@onready var end_message = $CanvasLayer/UI/EndPanel/EndMessage
#
func _ready():
	$Board.game_won.connect(_on_board_game_won)
	
#func _on_board_game_won():
	#end_message.text = "You Win!"
	#end_panel.visible = true
	
#func _on_board_game_won():
	#print("MAIN RECEIVED WIN")
	#$CanvasLayer/UI/EndPanel/WinLabel.visible = true
#
func _on_board_game_won():
	print("MAIN RECEIVED WIN")
	var panel = $CanvasLayer/UI/EndPanel
	print(panel)
	panel.visible = true
#func _on_board_game_lost():
	#end_message.text = "Out of Turns!"
	#end_panel.visible = true

func _on_restart_button_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	
