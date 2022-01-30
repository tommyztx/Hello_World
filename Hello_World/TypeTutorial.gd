extends Node

onready var textbox = get_node("TextBox")
onready var input = get_node("LineEdit")
onready var cursor = get_node("Cursor")

func inpos():
	print(Variables.pos.x)
	print(Variables.pos.y)
	if (535 - (293 / 2) < Variables.pos.x && Variables.pos.x < 535 + (293 / 2)):
		if (175 - (74 /2) < Variables.pos.y && Variables.pos.y < 175 + (74 / 2)):
			return true
	else:
		return false
		
func _ready():
	textbox.addtext("Great! Now lets go over the basics. Get me to the box and let me know who you are. (press space to type)")

func _process(delta):
	if (Input.is_action_just_pressed("ui_select") && inpos()):
		Variables.canMove = false
		input.grabfocus()
		

