extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bewl = true
var sizzled = false
var slurped = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SlowArea_body_entered(body):
	if(bewl):
		if(body.has_method("metalPit")):
			body.metalPit()
		$MoltenSizzle.play()

func _on_DeathArea_body_entered(body):
	if(bewl):
		while(not sizzled):
			yield(get_tree().create_timer(.1), "timeout")
		$RobertDrinkLava.play()
		while(not slurped):
			yield(get_tree().create_timer(.05), "timeout")
		body.position = $"../../SpawnPoint".position
		bewl = false
		$DeathArea/CollisionShape2D.disabled = true
		$SlowArea/CollisionShape2D.disabled = true
		$M1.visible = false
		$M2.visible = false
		$M3.visible = false


func _on_MoltenSizzle_finished():
	sizzled = true


func _on_RobertDrinkLava_finished():
	slurped = true
