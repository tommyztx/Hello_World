extends CanvasLayer

const CHAR_READ_RATE = 0.05

onready var textbox_container = $TextboxContainer
onready var symbol = $TextboxContainer/MarginContainer/HBoxContainer/Label

var h = 0
var pathey = ""

enum State {
	READY,
	READING,
	FINISHED
}

var current_state = State.READY


func _process(delta):
	match current_state:
		State.READY:
			pass
		State.READING:
			if Input.is_action_just_pressed("enter"):
				symbol.percent_visible = 1.0
				$Tween.stop_all()
		State.FINISHED:
					pass
	
func hidetextbox():
	symbol.text = ""
	textbox_container.hide()

func showtextbox():
	textbox_container.show()
	print("rrrr")
	
func addtext(next_text):
	symbol.text = next_text
	change_state(State.READING)
	showtextbox()
	$Tween.interpolate_property(symbol, "percent_visible", 0.0, 1.0, len(next_text) * CHAR_READ_RATE, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	
func addtexte(next_text, title):
	symbol.text = next_text
	change_state(State.READING)
	showtextbox()
	$Tween.interpolate_property(symbol, "percent_visible", 0.0, 1.0, len(next_text) * CHAR_READ_RATE, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	if Input.is_action_just_pressed("enter"):
				symbol.percent_visible = 1.0
				$Tween.stop_all()
				get_tree().change_scene("res://" + title + ".tscn")
	
func change_state(next_state):
	current_state = next_state
	

func _on_Tween_tween_all_completed():
	change_state(State.FINISHED)
