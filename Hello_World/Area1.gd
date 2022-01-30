extends Node

onready var textbox = get_node("TextBoxfv")
onready var label = get_node("TextBoxfv/TextboxContainer/MarginContainer/HBoxContainer/Label")

func _ready():
	label.get_font('font').size = 30
	textbox.addtext("Welcome, these levels will go over python, just fill it in, you got this! (Here's a hint: use print(" + ") to print things)")

	
