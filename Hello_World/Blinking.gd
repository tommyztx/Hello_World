extends Node

onready var timer = get_node("Timer")
onready var text_box = get_node("TextBox")
onready var block = get_node("block")

var a = 0
var transparency= 0

func _ready():
	timer.set_wait_time(6)
	timer.connect("timeout", self, "_on_Timer_timeout")
	timer.start()
	
func _process(delta):
	if (timer.get_time_left() > 0):
		a += 1
		a %= 30
		if(a == 0):
			transparency += 1
			transparency %= 2
			
		block.change_trans(transparency)

func _on_Timer_timeout():
	text_box.addtext("Hey there")
	print("bruh")
	block.change_trans(1)
	Variables.pos = Vector2(60, 67)
	get_tree().change_scene("res://Movement.tscn")
	
