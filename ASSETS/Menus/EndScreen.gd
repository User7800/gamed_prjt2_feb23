extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var LevelOneTime = null
onready var LevelTwoTime = null
onready var LevelThreeTime = null
onready var L1P = null
onready var L2P = null
onready var L3P = null
# Called when the node enters the scene tree for the first time.
func _ready():
	#_updateData()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _updateData():
	pass
	"""
	if(LevelOneTime != null):
		$ScoreRect/CenterContainer/VBoxContainer/HBlvl1/L1TD.text = LevelOneTime
	if(LevelTwoTime != null):
		$ScoreRect/CenterContainer/VBoxContainer/HBlvl2/L2TD.text = LevelTwoTime
	if(LevelThreeTime != null):
		$ScoreRect/CenterContainer/VBoxContainer/HBlvl3/L3TD.text = LevelThreeTime
	if(L1P != null):
		$ScoreRect/CenterContainer/VBoxContainer/HBlvl1/L1SD.text = L1P
	if(L2P != null):
		$ScoreRect/CenterContainer/VBoxContainer/HBlvl2/L2SD.text = L2P
	if(L3P!=null):
		$ScoreRect/CenterContainer/VBoxContainer/HBlvl3/L3SD.text = L3P
	"""

func _on_ReturnToMainMenu_pressed():
	$TransiLayer.visible = true
	$TransiLayer/Transitions/AnimationPlayer.play("Transition")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://ASSETS/Menus/TitleScreen.tscn")


func _on_Quit_Button_pressed():
	$Audio/DeathScream.play()
	$TransiLayer.visible = true
	$TransiLayer/Transitions/AnimationPlayer.play("Transition")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().quit()



func _on_Lvl1_pressed():
	$TransiLayer.visible = true
	$TransiLayer/Transitions/AnimationPlayer.play("Transition")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Maps/MainScene.tscn")


func _on_Lvl2_pressed():
	$TransiLayer.visible = true
	$TransiLayer/Transitions/AnimationPlayer.play("Transition")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Maps/Factory.tscn")


func _on_Lvl3_pressed():
	$TransiLayer.visible = true
	$TransiLayer/Transitions/AnimationPlayer.play("Transition")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Maps/Level3.tscn")


func _on_Lvl1_mouse_entered():
	$Audio/ButtonClickSound.play()


func _on_Lvl2_mouse_entered():
	$Audio/ButtonClickSound.play()


func _on_Lvl3_mouse_entered():
	$Audio/ButtonClickSound.play()


func _on_Quit_Button_mouse_entered():
	$Audio/ButtonClickSound.play()


func _on_ReturnToMainMenu_mouse_entered():
	$Audio/ButtonClickSound.play()
