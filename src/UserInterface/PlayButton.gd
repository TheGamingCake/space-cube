extends Button

tool

export(String, FILE) var next_scene_path = ""#Initializes the variable that will contain the next scene path 

func _on_button_up():
	get_tree().change_scene(next_scene_path)#When the button is clicked, change the current scene with the next_scene_path var
	PlayerData.reset()#resets the players data

func _get_configuration_warning():
	return "The next scene path cannot be empty!" if next_scene_path == "" else ""
