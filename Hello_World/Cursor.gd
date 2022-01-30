extends Area2D

export var speed = 200.0
var screen_size = Vector2.ZERO
var a = 0
var transparency = 0

func _ready():
	screen_size = get_viewport_rect().size
	position = Variables.pos
	
func _process(delta):
	var direction = Vector2.ZERO
	if (Variables.canMove):
		if Input.is_action_pressed("move_right"):
			direction.x += 1
		if Input.is_action_pressed("move_left"):
			direction.x -= 1
		if Input.is_action_pressed("move_up"):
			direction.y -= 1
		if Input.is_action_pressed("move_down"):
			direction.y += 1
		
		if direction.length() > 1:
			direction = direction.normalized()
		position += direction * speed * delta
		position.x = clamp(position.x, 10, screen_size.x - 10)
		position.y = clamp(position.y, 22.5, screen_size.y - 22.5)
		Variables.pos = position
	a += 1
	a %= 20
	if(a == 0):
		transparency += 1
		transparency %= 2
	modulate.a = transparency


func _on_Folder1_area_entered(area):
	Variables.pos = Vector2(50, 260)
	get_tree().change_scene("res://Area1.tscn")
	
func _on_Folder2_area_entered(area):
	if (!Variables.locked[0]):
		Variables.pos = Vector2(980, 260)
		get_tree().change_scene("res://Area2.tscn")
	
func _on_Folder3_area_entered(area):
	if (!Variables.locked[1]):
		Variables.pos = Vector2(50, 260)
		get_tree().change_scene("res://Area3.tscn")
