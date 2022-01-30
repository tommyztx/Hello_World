extends Node


onready var textbox = get_node("TextBoxfv")
onready var label = get_node("TextBoxfv/TextboxContainer/MarginContainer/HBoxContainer/Label")

func _ready():
	textbox.addtext("That's a bit better isn't it? Decided to change the font so this isn't too boring. Head into the open file to enter the level")
