extends Node2D


onready var block = $topTile
onready var shape = $topTile/CollisionShape2D
#visible = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var fallTimes = 0
var fallTime1 = false
var fallTime2 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	block.visible = false
	#get_node("topTile").disabled = true
	shape.set_deferred("disabled", true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_fallArea1_body_entered(body):
	block.visible = true
	shape.set_deferred("disabled", false)
	fallTimes += 1
	if(fallTimes == 1):
		fallTime1 = true
	if(fallTimes == 2):
		fallTime2 = true
