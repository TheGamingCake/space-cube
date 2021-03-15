tool
extends Button


func _on_button_up() -> void:
	PlayerData.reset()
	get_tree().change_scene("res://src/Screens/MainScreen.tscn")
