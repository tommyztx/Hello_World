extends RichTextLabel


# Declare member variables here. Examples:
var a = 1
var mod = .02


# Called when the node enters the scene tree for the first time.
func _ready():
	pass# Replace with function body.

func _unhandled_key_input(event):
	if event.pressed:
		get_tree().change_scene("res://Title.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if a <= 0 || a >= 1:
		mod *= -1
	a += mod
	modulate.a = a
