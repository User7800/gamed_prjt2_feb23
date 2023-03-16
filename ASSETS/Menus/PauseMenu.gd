extends Control


onready var scene_tree: = get_tree()
onready var Pause_Menu: = get_node("TextureRect")

var paused: = false setget set_paused

func set_paused(value: bool) -> void:
	paused = value
	scene_tree.paused = value
	Pause_Menu.visible = value
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _unhandled_input(event: InputEvent) -> void:
	if(event.is_action_pressed("pause_menu")):
		$paper.play()
		self.paused = not paused
		scene_tree.set_input_as_handled()

func _on_Resume_pressed():
	get_tree().paused = false
	Pause_Menu.visible = false


func _on_Quit_pressed():
	get_tree().quit()


func _on_Resume_mouse_entered():
	$ButtonClickSound.play()


func _on_Quit_mouse_entered():
	$ButtonClickSound.play()


func _on_CheckBox_toggled(button_pressed):
	$toggleClick.play()
	OS.window_fullscreen = !OS.window_fullscreen


func _on_CheckBox_mouse_entered():
	pass
	#$ButtonClickSound.play()


func _on_Home_pressed():
	get_tree().paused = false
	Pause_Menu.visible = false
	get_tree().change_scene("res://ASSETS/Menus/TitleScreen.tscn")
