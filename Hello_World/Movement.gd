extends Node


onready var timer = get_node("Timer")
onready var textbox = get_node("TextBox")

func _ready():
	timer.set_wait_time(6)
	textbox.addtext("Let's get started. To move me press WASD on the keypad.")
	timer.connect("timeout", self, "_on_Timer_timeout")
	timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://TypeTutorial.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(timer.get_time_left())
