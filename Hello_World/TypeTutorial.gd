extends Node

onready var textbox = get_node("TextBox")
onready var input = get_node("InputBox")
onready var cursor = get_node("Cursor")

func inpos():
	if (535 < Variables.pos.x && Variables.pos.x < 535 + 298):
		if (175 < Variables.pos.y && Variables.pos.y < 175 + 74):
			return true
	else:
		return false
		
func _ready():
	textbox.addtext("Great! Now lets go over the basics. Get me to the box and let me know who you are. (press space to type)")

func _process(delta):
	if (Input.is_action_just_pressed("ui_select") && inpos()):
		Variables.canMove = false
		input.grabfocus()
	


	


func _on_InputBox_text_entered(new_text):
	Variables.canMove = true
	input.release_focus()
	textbox.addtexte("Nice " + new_text + "! This place is kind of bleak, lets move somewhere else (press enter to move on)", "MainArea")
