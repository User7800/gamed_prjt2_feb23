extends Node2D

onready var bushPoint = get_node("BerryBush")
onready var slidePoint = get_node("SlideR")
onready var holePoint = get_node("HoleOne")
onready var holePoint2 = get_node("HoleOne2")
##onready var sawAniChange = get_node("Saw")
var Hflag = false
var Hflag2 = false
var H2flag = false
var H2flag2 = false
##var sawAni = 0
var sawDeath = 0

onready var bar = $PBar
var barValue = 0
var BAR_PERCENT = 20
#bar.value = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#sets PBar (lvl 1) to 0%
	bar.value = barValue
	

#Yeah I know this is an absolute clusterMess and probably not kosher, but it works

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if( bushPoint.bushPoints == 1 ):
		bar.value += BAR_PERCENT
		bushPoint.bushPoints = 2
	if( slidePoint.kount == 1):
		bar.value += BAR_PERCENT
		slidePoint.kount += 1
	if(holePoint.fallTime1 && !Hflag):
		bar.value += BAR_PERCENT
		Hflag = true
	if(holePoint.fallTime2 && !Hflag2):
		bar.value += BAR_PERCENT
		Hflag2 = true
	if(holePoint2.fallTime1 && !H2flag):
		bar.value += BAR_PERCENT
		H2flag = true
	if(holePoint2.fallTime2 && !H2flag2):
		bar.value += BAR_PERCENT
		H2flag2 = true
	##if( sawAni == 1):
		##sawAniChange.changeAni()
		##sawAni += 1
	if(sawDeath == 1):
		bar.value += BAR_PERCENT
		sawDeath += 1
