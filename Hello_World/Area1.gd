extends Node

onready var textbox = get_node("TextBoxfv2")
onready var label = get_node("TextBoxfv2/TextboxContainer/MarginContainer/HBoxContainer/Label")
onready var input = get_node("InputBox")

func _ready():
	textbox.addtext("Welcome, these levels will go over python, just fill it in, you got this! (Here's a hint: use print(" + ") to print things)")

func inpos():
	if (108 < Variables.pos.x && Variables.pos.x < 108 + 298):
		if (195 < Variables.pos.y && Variables.pos.y < 195 + 74):
			return true
	else:
		return false

func _process(delta):
	if (Input.is_action_just_pressed("ui_select") && inpos()):
		Variables.canMove = false
		input.grabfocus()


func _on_InputBox_text_entered(new_text):
	if(new_text == "print"):
		textbox.addtexte("Hello, World!\n Thank you for playing!", "End")
	else:
		Variables.canMove = true
		get_tree().reload_current_scene()
