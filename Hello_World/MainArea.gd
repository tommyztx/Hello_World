extends Node


onready var textbox = get_node("TextBoxfv")
onready var label = get_node("TextBoxfv/TextboxContainer/MarginContainer/HBoxContainer/Label")

func _ready():
	label.get_font('font').size = 30
	textbox.addtext("Phew, that's better. You can take in the fresh air or go to the open level to the right.")
